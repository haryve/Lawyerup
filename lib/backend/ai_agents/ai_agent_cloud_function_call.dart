import '../cloud_functions/cloud_functions.dart';
import 'package:flutter/material.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// Represents a message in a conversation thread.
class Message {
  final String role;
  final String text;

  const Message({
    required this.role,
    required this.text,
  });
}

/// Manages conversation thread IDs and message history between FlutterFlow and AI providers.
///
/// Maintains a mapping between FlutterFlow's internal user-assigned
/// conversation IDs and the corresponding thread/conversation IDs used by
/// different AI providers like OpenAI Assistants API.
///
/// Maintains message history for each thread when using stateless AI providers
/// that don't maintain conversation context on their backend, enabling
/// context-aware conversations.
///
/// Note: For OpenAI Responses API, maintains previous response IDs to maintain
/// conversation context.
class ThreadManager {
  static final Map<String, Map<String, String>> _threadIds = {};
  static final Map<String, Map<String, String>> _assistantIds = {};
  static final Map<String, Map<String, List<Message>>> _messageHistory = {};
  static final Map<String, Map<String, String>> _responseIds = {};

  /// Sets the vendor thread ID for a conversation (used by OpenAI Assistants API & Anthropic)
  static void setVendorThreadId(
      String provider, String userThreadId, String vendorThreadId) {
    _threadIds.putIfAbsent(provider, () => {});
    _threadIds[provider]![userThreadId] = vendorThreadId;
  }

  /// Gets the vendor thread ID for a conversation (used by OpenAI Assistants API & Anthropic)
  static String? getVendorThreadId(String provider, String userThreadId) {
    return _threadIds[provider]?[userThreadId];
  }

  /// Sets the assistant ID for a conversation (used by OpenAI Assistants API)
  static void setAssistantId(
      String provider, String userThreadId, String assistantId) {
    _assistantIds.putIfAbsent(provider, () => {});
    _assistantIds[provider]![userThreadId] = assistantId;
  }

  /// Gets the assistant ID for a conversation (used by OpenAI Assistants API)
  static String? getAssistantId(String provider, String userThreadId) {
    return _assistantIds[provider]?[userThreadId];
  }

  /// Sets the response ID for a conversation (used by OpenAI Responses API)
  static void setResponseId(
      String provider, String userThreadId, String responseId) {
    _responseIds.putIfAbsent(provider, () => {});
    _responseIds[provider]![userThreadId] = responseId;
  }

  /// Gets the previous response ID for a conversation (used by OpenAI Responses API)
  static String? getResponseId(String provider, String userThreadId) {
    return _responseIds[provider]?[userThreadId];
  }

  static void clearThread(String provider, String userThreadId) {
    _threadIds[provider]?.remove(userThreadId);
    _assistantIds[provider]?.remove(userThreadId);
    _responseIds[provider]?.remove(userThreadId);

    // Clean up empty provider maps if needed
    if (_threadIds[provider]?.isEmpty ?? false) {
      _threadIds.remove(provider);
    }
    if (_assistantIds[provider]?.isEmpty ?? false) {
      _assistantIds.remove(provider);
    }
    if (_responseIds[provider]?.isEmpty ?? false) {
      _responseIds.remove(provider);
    }
  }

  /// Adds a message to the history for a specific thread
  static void addMessage(
      String provider, String userThreadId, Message message) {
    _messageHistory.putIfAbsent(provider, () => {});
    _messageHistory[provider]!.putIfAbsent(userThreadId, () => []);
    _messageHistory[provider]![userThreadId]!.add(message);
  }

  /// Gets all messages for a specific thread
  static List<Message> getMessages(String provider, String userThreadId) {
    return _messageHistory[provider]?[userThreadId] ?? [];
  }

  /// Clears message history for a specific thread
  static void clearMessages(String provider, String userThreadId) {
    _messageHistory[provider]?.remove(userThreadId);
    if (_messageHistory[provider]?.isEmpty ?? false) {
      _messageHistory.remove(provider);
    }
  }
}

/// Calls a cloud-based AI agent and manages the conversation thread.
///
/// * [context] - The build context for showing error messages if needed.
/// * [agentName] - The camel case version of the agent's name.
/// * [message] - The user's message to send to the agent.
/// * [threadId] - A local identifier for the conversation thread.
/// * [provider] - The AI provider (e.g. 'OPENAI', 'GOOGLE').
/// * [imageUrl] - Optional URL of an image to include in the message.
/// * [pdfUrl] - Optional URL of a PDF to include in the message.
///
/// Returns the agent's response text, or null if an error occurred.
Future<String?> callCloudAgent({
  required BuildContext context,
  required String agentName,
  required String message,
  required String threadId,
  required String provider,
  String? imageUrl,
  String? pdfUrl,
}) async {
  try {
    final vendorThreadId = ThreadManager.getVendorThreadId(provider, threadId);
    final assistantId = ThreadManager.getAssistantId(provider, threadId);
    // For OpenAI, use previousResponseId for the Responses API
    final previousResponseId = provider == 'OPENAI'
        ? ThreadManager.getResponseId(provider, threadId)
        : null;

    // Get existing messages for this thread if it exists
    final messages = ThreadManager.getMessages(provider, threadId)
        .map((msg) => {
              'role': msg.role,
              'text': msg.text,
            })
        .toList();

    final result = await makeCloudCall(agentName, {
      "message": message,
      if (vendorThreadId != null) "threadId": vendorThreadId,
      if (assistantId != null) "assistantId": assistantId,
      if (previousResponseId != null) "previousResponseId": previousResponseId,
      if (imageUrl != null && imageUrl.isNotEmpty) "imageUrl": imageUrl,
      if (pdfUrl != null && pdfUrl.isNotEmpty) "pdfUrl": pdfUrl,
      "messages": messages,
    });

    final response = result['response'] as String?;
    final newVendorThreadId = result['threadId'] as String?;
    final newAssistantId = result['assistantId'] as String?;
    final responseId =
        provider == 'OPENAI' ? result['responseId'] as String? : null;

    // Store the vendor thread ID and assistant ID for future calls
    if (newVendorThreadId != null) {
      ThreadManager.setVendorThreadId(provider, threadId, newVendorThreadId);
    }
    if (newAssistantId != null) {
      ThreadManager.setAssistantId(provider, threadId, newAssistantId);
    }

    // Store the responseId for OpenAI Responses API
    if (responseId != null) {
      ThreadManager.setResponseId(provider, threadId, responseId);
    }

    // Anthropic requires the user message and assistant response to be added
    // to the thread history in order to maintain context.
    if (provider == 'ANTHROPIC' && response != null) {
      // Add user message to thread
      ThreadManager.addMessage(
        provider,
        threadId,
        Message(role: 'user', text: message),
      );

      // Add assistant response to thread
      ThreadManager.addMessage(
        provider,
        threadId,
        Message(role: 'assistant', text: response),
      );
    }

    return response;
  } catch (e) {
    debugPrint('Unexpected error: $e');
    showSnackbar(
      context,
      'An unexpected error occurred',
    );
    return null;
  }
}
