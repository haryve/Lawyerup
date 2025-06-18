import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import '/backend/api_requests/api_calls.dart';

/// API key is read from a compile-time environment variable. Pass
/// `--dart-define=OPENAI_API_KEY=YOUR_KEY` when running the app.
const String _openAiKey = kOpenAIApiKey;

class AiChatWidget extends StatefulWidget {
  const AiChatWidget({Key? key}) : super(key: key);

  @override
  State<AiChatWidget> createState() => _AiChatWidgetState();
}

class _AiChatWidgetState extends State<AiChatWidget> {
  final TextEditingController _controller = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  final List<Map<String, dynamic>> _messages = [];
  bool _loading = false;
  SharedPreferences? _prefs;
  static const _prefsKey = 'aiChatHistory';

  @override
  void initState() {
    super.initState();
    _loadMessages();
  }

  Future<void> _loadMessages() async {
    _prefs ??= await SharedPreferences.getInstance();
    final data = _prefs?.getString(_prefsKey);
    if (data != null) {
      final decoded = jsonDecode(data) as List<dynamic>;
      final stored = decoded.whereType<Map<String, dynamic>>().toList();
      _messages.addAll(stored);
      setState(() {});
      _scrollToBottom();
    }
  }

  Future<void> _saveMessages() async {
    final prefs = _prefs ?? await SharedPreferences.getInstance();
    _prefs = prefs;
    await prefs.setString(_prefsKey, jsonEncode(_messages));
  }

  void _scrollToBottom() {
    if (!_scrollController.hasClients) return;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    });
  }

  Future<void> _clearMessages() async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Clear conversation?'),
        content: const Text('This will remove all stored messages.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text('Clear'),
          ),
        ],
      ),
    );
    if (confirmed != true) return;
    setState(() => _messages.clear());
    final prefs = _prefs ?? await SharedPreferences.getInstance();
    _prefs = prefs;
    await prefs.remove(_prefsKey);
    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Conversation cleared')),
      );
    }
    _scrollToBottom();
  }

  Future<void> _sendMessage() async {
    final text = _controller.text.trim();
    if (text.isEmpty || _loading) return;
    if (_openAiKey.isEmpty) {
      setState(() {
        _messages.add({
          'role': 'assistant',
          'content': 'OpenAI API key not configured',
          'time': DateTime.now().toIso8601String(),
        });
      });
      _controller.clear();
      await _saveMessages();
      _scrollToBottom();
      return;
    }
    setState(() {
      _messages.add({
        'role': 'user',
        'content': text,
        'time': DateTime.now().toIso8601String(),
      });
      _loading = true;
    });
    await _saveMessages();
    _scrollToBottom();
    _controller.clear();
    try {
      final sanitized = _messages
          .map((m) => {
                'role': m['role'],
                'content': m['content'],
              })
          .toList();
      final res = await http
          .post(
            Uri.parse('https://api.openai.com/v1/chat/completions'),
            headers: {
              'Content-Type': 'application/json',
              'Authorization': 'Bearer $_openAiKey',
            },
            body: jsonEncode({
              'model': 'gpt-3.5-turbo',
              'messages': sanitized,
            }),
          )
          .timeout(const Duration(seconds: 30));
      if (res.statusCode == 200) {
        final data = jsonDecode(res.body) as Map<String, dynamic>;
        final choices = data['choices'] as List<dynamic>?;
        if (choices != null && choices.isNotEmpty) {
          final choice = choices.first;
          final msg = choice['message']['content'] as String?;
          if (msg != null) {
            setState(() {
              _messages.add({
                'role': 'assistant',
                'content': msg.trim(),
                'time': DateTime.now().toIso8601String(),
              });
            });
            await _saveMessages();
            _scrollToBottom();
          }
        } else {
          setState(() {
            _messages.add({
              'role': 'assistant',
              'content': 'No response from server',
              'time': DateTime.now().toIso8601String(),
            });
          });
          _scrollToBottom();
        }
      } else {
        setState(() {
          _messages.add({
            'role': 'assistant',
            'content': 'Error: ${res.statusCode}\n${res.body}',
            'time': DateTime.now().toIso8601String(),
          });
        });
        _scrollToBottom();
      }
    } catch (e) {
      setState(() {
        _messages.add({
          'role': 'assistant',
          'content': 'Failed to connect',
          'time': DateTime.now().toIso8601String(),
        });
      });
      _scrollToBottom();
    } finally {
      setState(() => _loading = false);
      await _saveMessages();
    }
  }

  Widget _buildMessage(BuildContext context, Map<String, dynamic> msg) {
    final isUser = msg['role'] == 'user';
    final alignment = isUser ? Alignment.centerRight : Alignment.centerLeft;
    final color = isUser ? Colors.blue[100] : Colors.grey[300];
    final time = msg['time'] as String?;
    return Align(
      alignment: alignment,
      child: GestureDetector(
        onLongPress: () async {
          final content = msg['content'] ?? '';
          await Clipboard.setData(ClipboardData(text: content));
          if (!mounted) return;
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Copied to clipboard')),
          );
        },
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 4.0),
          padding: const EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Column(
            crossAxisAlignment:
                isUser ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: [
              Text(msg['content'] ?? ''),
              if (time != null)
                Text(
                  TimeOfDay.fromDateTime(DateTime.parse(time)).format(context),
                  style: const TextStyle(fontSize: 10, color: Colors.black54),
                ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AI Chat'),
        actions: [
          IconButton(
            icon: const Icon(Icons.delete_outline),
            onPressed: _messages.isEmpty ? null : _clearMessages,
          ),
        ],
      ),
      body: Column(
        children: [
          if (_loading)
            const LinearProgressIndicator(minHeight: 2),
          Expanded(
            child: _messages.isEmpty
                ? const Center(
                    child: Text('Start the conversation by asking a question'),
                  )
                : ListView.builder(
                    padding: const EdgeInsets.all(16.0),
                    controller: _scrollController,
                    keyboardDismissBehavior:
                        ScrollViewKeyboardDismissBehavior.onDrag,
                    itemCount: _messages.length,
                    itemBuilder: (context, index) =>
                        _buildMessage(context, _messages[index]),
                  ),
          ),
          const Divider(height: 1),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      hintText: 'Ask something...',
                    ),
                    onSubmitted: (_) => _sendMessage(),
                  ),
                ),
                IconButton(
                  icon: _loading
                      ? const SizedBox(
                          width: 16,
                          height: 16,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        )
                      : const Icon(Icons.send),
                  onPressed: _loading ? null : _sendMessage,
                )
              ],
            ),
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
