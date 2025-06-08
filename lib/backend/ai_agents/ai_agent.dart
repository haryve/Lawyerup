import 'package:flutter/material.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'ai_agent_cloud_function_call.dart';

/// Calls an AI agent and manages the conversation thread.
///
/// * [context] - The build context for showing error messages if needed.
/// * [prompt] - The user's message to send to the agent.
/// * [imageUrl] - A URL to an image to send to the agent (optional).
/// * [imageAsset] - An uploaded image file to send to the agent (optional).
/// * [audioUrl] - A URL to an audio file to send to the agent (optional).
/// * [audioAsset] - An uploaded audio file to send to the agent (optional).
/// * [videoUrl] - A URL to a video to send to the agent (optional).
/// * [videoAsset] - An uploaded video file to send to the agent (optional).
/// * [pdfUrl] - Optional URL of a PDF to include in the message.
/// * [pdfAsset] - Optional PDF file to include in the message.
/// * [threadId] - A local identifier for the conversation thread.
/// * [agentCloudFunctionName] - The name of the cloud function to call for the agent.
/// * [provider] - The AI provider (e.g. 'OPENAI', 'GOOGLE').
/// * [agentJson] - Optional configuration parameters for the agent. Required for Google agents
///   when using Firebase Vertex AI (Gemini) since configuration is passed client-side.
///   Not required for cloud function-based agents since configuration is included in
///   the cloud function source code.
/// * [responseType] - The type of response to expect from the agent.
///
/// Returns a Future that completes with the agent's response message, or null if there was an error.
Future<dynamic> callAiAgent({
  required BuildContext context,
  required String prompt,
  String? imageUrl,
  FFUploadedFile? imageAsset,
  String? audioUrl,
  FFUploadedFile? audioAsset,
  String? videoUrl,
  FFUploadedFile? videoAsset,
  String? pdfUrl,
  FFUploadedFile? pdfAsset,
  required String threadId,
  required String agentCloudFunctionName,
  required String provider,
  String? agentJson,
  required String responseType,
}) async {
  try {
    switch (provider) {
      case 'OPENAI':
      case 'ANTHROPIC':
        final response = await callCloudAgent(
          context: context,
          agentName: agentCloudFunctionName,
          message: prompt,
          threadId: threadId,
          provider: provider,
          imageUrl: imageUrl,
          pdfUrl: pdfUrl,
        );

        if (response != null && responseType == 'JSON') {
          try {
            return jsonDecode(response) as Map<String, dynamic>;
          } catch (e) {
            print('Failed to parse JSON response: $response');
            throw Exception('AI response was not valid JSON');
          }
        }
        return response;
      default:
        showSnackbar(
          context,
          'Unsupported AI provider: $provider}',
        );
        return null;
    }
  } catch (e) {
    showSnackbar(
      context,
      'Error: ${e.toString()}',
    );
    return null;
  }
}

void clearAiChat(String threadId, String provider) {
  switch (provider) {
    case 'OPENAI':
    case 'ANTHROPIC':
      ThreadManager.clearThread(provider, threadId);
      break;
    default:
      // Handle other providers if needed
      break;
  }
}
