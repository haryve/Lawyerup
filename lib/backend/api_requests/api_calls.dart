import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start OpenAI API Group Code

class OpenAIAPIGroup {
  static String getBaseUrl({
    String? apikey =
        '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',
  }) =>
      'https://api.openai.com/v1';
  static Map<String, String> headers = {};
  static CreateChatCompletionCall createChatCompletionCall =
      CreateChatCompletionCall();
  static CreateChatCompletionCopyCall createChatCompletionCopyCall =
      CreateChatCompletionCopyCall();
  static AroviaVisionCall aroviaVisionCall = AroviaVisionCall();
  static CreateCompletionCall createCompletionCall = CreateCompletionCall();
  static CreateEditCall createEditCall = CreateEditCall();
  static CreateImageCall createImageCall = CreateImageCall();
  static CreateImageEditCall createImageEditCall = CreateImageEditCall();
  static CreateImageVariationCall createImageVariationCall =
      CreateImageVariationCall();
  static CreateEmbeddingCall createEmbeddingCall = CreateEmbeddingCall();
  static CreateSpeechCall createSpeechCall = CreateSpeechCall();
  static CreateTranscriptionCall createTranscriptionCall =
      CreateTranscriptionCall();
  static CreateTranslationCall createTranslationCall = CreateTranslationCall();
  static ListFilesCall listFilesCall = ListFilesCall();
  static CreateFileCall createFileCall = CreateFileCall();
  static DeleteFileCall deleteFileCall = DeleteFileCall();
  static RetrieveFileCall retrieveFileCall = RetrieveFileCall();
  static DownloadFileCall downloadFileCall = DownloadFileCall();
  static CreateFineTuningJobCall createFineTuningJobCall =
      CreateFineTuningJobCall();
  static ListPaginatedFineTuningJobsCall listPaginatedFineTuningJobsCall =
      ListPaginatedFineTuningJobsCall();
  static RetrieveFineTuningJobCall retrieveFineTuningJobCall =
      RetrieveFineTuningJobCall();
  static ListFineTuningEventsCall listFineTuningEventsCall =
      ListFineTuningEventsCall();
  static CancelFineTuningJobCall cancelFineTuningJobCall =
      CancelFineTuningJobCall();
  static CreateFineTuneCall createFineTuneCall = CreateFineTuneCall();
  static ListFineTunesCall listFineTunesCall = ListFineTunesCall();
  static RetrieveFineTuneCall retrieveFineTuneCall = RetrieveFineTuneCall();
  static CancelFineTuneCall cancelFineTuneCall = CancelFineTuneCall();
  static ListFineTuneEventsCall listFineTuneEventsCall =
      ListFineTuneEventsCall();
  static ListModelsCall listModelsCall = ListModelsCall();
  static RetrieveModelCall retrieveModelCall = RetrieveModelCall();
  static DeleteModelCall deleteModelCall = DeleteModelCall();
  static CreateModerationCall createModerationCall = CreateModerationCall();
  static ListAssistantsCall listAssistantsCall = ListAssistantsCall();
  static CreateAssistantCall createAssistantCall = CreateAssistantCall();
  static GetAssistantCall getAssistantCall = GetAssistantCall();
  static ModifyAssistantCall modifyAssistantCall = ModifyAssistantCall();
  static DeleteAssistantCall deleteAssistantCall = DeleteAssistantCall();
  static CreateThreadCall createThreadCall = CreateThreadCall();
  static GetThreadCall getThreadCall = GetThreadCall();
  static ModifyThreadCall modifyThreadCall = ModifyThreadCall();
  static DeleteThreadCall deleteThreadCall = DeleteThreadCall();
  static ListMessagesCall listMessagesCall = ListMessagesCall();
  static CreateMessageCall createMessageCall = CreateMessageCall();
  static GetMessageCall getMessageCall = GetMessageCall();
  static ModifyMessageCall modifyMessageCall = ModifyMessageCall();
  static CreateThreadAndRunCall createThreadAndRunCall =
      CreateThreadAndRunCall();
  static ListRunsCall listRunsCall = ListRunsCall();
  static CreateRunCall createRunCall = CreateRunCall();
  static GetRunCall getRunCall = GetRunCall();
  static ModifyRunCall modifyRunCall = ModifyRunCall();
  static SubmitToolOuputsToRunCall submitToolOuputsToRunCall =
      SubmitToolOuputsToRunCall();
  static CancelRunCall cancelRunCall = CancelRunCall();
  static ListRunStepsCall listRunStepsCall = ListRunStepsCall();
  static GetRunStepCall getRunStepCall = GetRunStepCall();
  static ListAssistantFilesCall listAssistantFilesCall =
      ListAssistantFilesCall();
  static CreateAssistantFileCall createAssistantFileCall =
      CreateAssistantFileCall();
  static GetAssistantFileCall getAssistantFileCall = GetAssistantFileCall();
  static DeleteAssistantFileCall deleteAssistantFileCall =
      DeleteAssistantFileCall();
  static ListMessageFilesCall listMessageFilesCall = ListMessageFilesCall();
  static GetMessageFileCall getMessageFileCall = GetMessageFileCall();
}

class CreateChatCompletionCall {
  Future<ApiCallResponse> call({
    String? prompt = '',
    String? apikey =
        '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',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl(
      apikey: apikey,
    );

    final ffApiRequestBody = '''
{
  "model": "gpt-4o",
  "messages": [
    {
      "role": "system",
      "content": "Don't use emojis,dont use too much ** ,be little friendly indian Act as a digital doctor receptionist (name - Arovia) — the CareMeez Virtual Health Expert — who:• Listens empathetically to user health concerns•  Offers safe, common first-aid or OTC suggestions when appropriate • Clearly warns of risks and never oversteps into prescription-only advice • ALWAYS Escalates to real doctor consults AND SPECIFY DOCTORS CATEGORY THE SPECIALIST GIVE USER WHOM HE/SHE CAN CONSULT ALSO TELLS ISSUES AND WHY PEOPLE GO TO THESE SPECIALISTS• Keeps tone warm, professional, and simple at all times,be casual friendly humble and make make sure people can understand it keep it lucid as simple as possible"
    },
    {
      "role": "user",
      "content": "${prompt}"
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createChatCompletion',
      apiUrl: '${baseUrl}/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apikey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? respText(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.choices[:].message.content''',
      ));
}

class CreateChatCompletionCopyCall {
  Future<ApiCallResponse> call({
    String? prompt = '',
    String? apikey =
        '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',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl(
      apikey: apikey,
    );

    final ffApiRequestBody = '''
{
  "model": "gpt-4o",
  "messages": [
    {
      "role": "system",
      "content": "You are a helpful medical AI assistant for CareMeez, a digital health platform. When a user describes their health concern, respond ONLY with a JSON array of the top 10 most relevant doctor specializations based on their input. Choose only from the following available CareMeez categories: [\\"Psychiatrist\\", \\"Psychologist\\", \\"General Physician\\", \\"Dermatologist\\", \\"Gynecologist\\", \\"Pediatrician\\", \\"Orthopedic\\", \\"Cardiologist\\", \\"Gastroenterologist\\", \\"ENT Specialist\\", \\"Neurologist\\", \\"Endocrinologist\\", \\"Pulmonologist\\", \\"Urologist\\", \\"Dentist\\", \\"Trichologist\\", \\"Nutritionist\\", \\"Homeopath\\", \\"Ayurvedic Doctor\\", \\"Fitness Coach\\", \\"Yoga Instructor\\", \\"Wellness Coach\\"]. Respond strictly as a JSON array of strings with no explanation or formatting around it."
    },
    {
      "role": "user",
      "content": "${prompt}"
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createChatCompletion Copy',
      apiUrl: '${baseUrl}/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apikey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? respText(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.choices[:].message.content''',
      ));
}

class AroviaVisionCall {
  Future<ApiCallResponse> call({
    String? prompt = '',
    String? image = '',
    String? apikey =
        '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',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl(
      apikey: apikey,
    );

    final ffApiRequestBody = '''
{
  "model": "gpt-4.1-mini",
  "messages": [
    {
      "role": "system",
      "content": "Act as a digital doctor receptionist (name - Arovia) — the CareMeez Virtual Health Expert — who:• Listens empathetically to user health concerns•  Offers safe, common first-aid or OTC suggestions when appropriate • Clearly warns of risks and never oversteps into prescription-only advice • ALWAYS Escalates to real doctor consults AND SPECIFY DOCTORS CATEGORY THE SPECIALIST GIVE USER WHOM HE/SHE CAN CONSULT ALSO TELLS ISSUES AND WHY PEOPLE GO TO THESE SPECIALISTS• Keeps tone warm, professional, and simple at all times,be casual friendly humble and make make sure people can understand it keep it lucid as simple as possible"
    },
    {
      "role": "user",
      "content": [
        {
          "type": "text",
          "text": "${prompt}"
        },
        {
          "type": "image_url",
          "image_url": {
            "url": "${image}"
          }
        }
      ]
    }
  ],
  "max_tokens": 900
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'arovia vision',
      apiUrl: '${baseUrl}/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apikey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? respText(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.choices[:].message.content''',
      ));
}

class CreateCompletionCall {
  Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
    String? apikey =
        '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',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl(
      apikey: apikey,
    );

    final ffApiRequestBody = '''
{
  "model": "",
  "prompt": "",
  "best_of": 0,
  "echo": false,
  "frequency_penalty": 0,
  "logit_bias": {},
  "logprobs": 0,
  "max_tokens": 16,
  "n": 1,
  "presence_penalty": 0,
  "seed": 0,
  "stop": "",
  "stream": false,
  "suffix": "test.",
  "temperature": 1,
  "top_p": 1,
  "user": "user-1234"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createCompletion',
      apiUrl: '${baseUrl}/completions',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateEditCall {
  Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
    String? apikey =
        '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',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl(
      apikey: apikey,
    );

    final ffApiRequestBody = '''
{
  "instruction": "Fix the spelling mistakes.",
  "model": "text-davinci-edit-001",
  "input": "What day of the wek is it?",
  "n": 1,
  "temperature": 1,
  "top_p": 1
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createEdit',
      apiUrl: '${baseUrl}/edits',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateImageCall {
  Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
    String? apikey =
        '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',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl(
      apikey: apikey,
    );

    final ffApiRequestBody = '''
{
  "prompt": "A cute baby sea otter",
  "model": "dall-e-3",
  "n": 1,
  "quality": "standard",
  "response_format": "url",
  "size": "1024x1024",
  "style": "vivid",
  "user": "user-1234"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createImage',
      apiUrl: '${baseUrl}/images/generations',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateImageEditCall {
  Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
    String? apikey =
        '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',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl(
      apikey: apikey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'createImageEdit',
      apiUrl: '${baseUrl}/images/edits',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateImageVariationCall {
  Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
    String? apikey =
        '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',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl(
      apikey: apikey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'createImageVariation',
      apiUrl: '${baseUrl}/images/variations',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateEmbeddingCall {
  Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
    String? apikey =
        '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',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl(
      apikey: apikey,
    );

    final ffApiRequestBody = '''
{
  "input": "The quick brown fox jumped over the lazy dog",
  "model": "text-embedding-ada-002",
  "encoding_format": "float",
  "user": "user-1234"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createEmbedding',
      apiUrl: '${baseUrl}/embeddings',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateSpeechCall {
  Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
    String? apikey =
        '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',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl(
      apikey: apikey,
    );

    final ffApiRequestBody = '''
{
  "model": "",
  "input": "",
  "voice": "alloy",
  "response_format": "mp3",
  "speed": 0
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createSpeech',
      apiUrl: '${baseUrl}/audio/speech',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateTranscriptionCall {
  Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
    String? apikey =
        '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',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl(
      apikey: apikey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'createTranscription',
      apiUrl: '${baseUrl}/audio/transcriptions',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateTranslationCall {
  Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
    String? apikey =
        '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',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl(
      apikey: apikey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'createTranslation',
      apiUrl: '${baseUrl}/audio/translations',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListFilesCall {
  Future<ApiCallResponse> call({
    String? purpose = '',
    String? apiKeyAuth = '',
    String? apikey =
        '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',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl(
      apikey: apikey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'listFiles',
      apiUrl: '${baseUrl}/files',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {
        'purpose': purpose,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateFileCall {
  Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
    String? apikey =
        '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',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl(
      apikey: apikey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'createFile',
      apiUrl: '${baseUrl}/files',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteFileCall {
  Future<ApiCallResponse> call({
    String? fileId = '',
    String? apiKeyAuth = '',
    String? apikey =
        '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',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl(
      apikey: apikey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'deleteFile',
      apiUrl: '${baseUrl}/files/${fileId}',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RetrieveFileCall {
  Future<ApiCallResponse> call({
    String? fileId = '',
    String? apiKeyAuth = '',
    String? apikey =
        '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',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl(
      apikey: apikey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'retrieveFile',
      apiUrl: '${baseUrl}/files/${fileId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DownloadFileCall {
  Future<ApiCallResponse> call({
    String? fileId = '',
    String? apiKeyAuth = '',
    String? apikey =
        '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',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl(
      apikey: apikey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'downloadFile',
      apiUrl: '${baseUrl}/files/${fileId}/content',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateFineTuningJobCall {
  Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
    String? apikey =
        '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',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl(
      apikey: apikey,
    );

    final ffApiRequestBody = '''
{
  "model": "gpt-3.5-turbo",
  "training_file": "file-abc123",
  "hyperparameters": {
    "batch_size": "",
    "learning_rate_multiplier": "",
    "n_epochs": ""
  },
  "suffix": "",
  "validation_file": "file-abc123"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createFineTuningJob',
      apiUrl: '${baseUrl}/fine_tuning/jobs',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListPaginatedFineTuningJobsCall {
  Future<ApiCallResponse> call({
    String? after = '',
    int? limit,
    String? apiKeyAuth = '',
    String? apikey =
        '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',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl(
      apikey: apikey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'listPaginatedFineTuningJobs',
      apiUrl: '${baseUrl}/fine_tuning/jobs',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {
        'after': after,
        'limit': limit,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RetrieveFineTuningJobCall {
  Future<ApiCallResponse> call({
    String? fineTuningJobId = '',
    String? apiKeyAuth = '',
    String? apikey =
        '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',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl(
      apikey: apikey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'retrieveFineTuningJob',
      apiUrl: '${baseUrl}/fine_tuning/jobs/${fineTuningJobId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListFineTuningEventsCall {
  Future<ApiCallResponse> call({
    String? fineTuningJobId = '',
    String? after = '',
    int? limit,
    String? apiKeyAuth = '',
    String? apikey =
        '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',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl(
      apikey: apikey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'listFineTuningEvents',
      apiUrl: '${baseUrl}/fine_tuning/jobs/${fineTuningJobId}/events',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {
        'after': after,
        'limit': limit,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CancelFineTuningJobCall {
  Future<ApiCallResponse> call({
    String? fineTuningJobId = '',
    String? apiKeyAuth = '',
    String? apikey =
        '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',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl(
      apikey: apikey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'cancelFineTuningJob',
      apiUrl: '${baseUrl}/fine_tuning/jobs/${fineTuningJobId}/cancel',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateFineTuneCall {
  Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
    String? apikey =
        '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',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl(
      apikey: apikey,
    );

    final ffApiRequestBody = '''
{
  "training_file": "file-abc123",
  "batch_size": 0,
  "classification_betas": [
    0
  ],
  "classification_n_classes": 0,
  "classification_positive_class": "",
  "compute_classification_metrics": false,
  "hyperparameters": {
    "n_epochs": ""
  },
  "learning_rate_multiplier": 0,
  "model": "curie",
  "prompt_loss_weight": 0,
  "suffix": "",
  "validation_file": "file-abc123"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createFineTune',
      apiUrl: '${baseUrl}/fine-tunes',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListFineTunesCall {
  Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
    String? apikey =
        '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',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl(
      apikey: apikey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'listFineTunes',
      apiUrl: '${baseUrl}/fine-tunes',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RetrieveFineTuneCall {
  Future<ApiCallResponse> call({
    String? fineTuneId = '',
    String? apiKeyAuth = '',
    String? apikey =
        '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',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl(
      apikey: apikey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'retrieveFineTune',
      apiUrl: '${baseUrl}/fine-tunes/${fineTuneId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CancelFineTuneCall {
  Future<ApiCallResponse> call({
    String? fineTuneId = '',
    String? apiKeyAuth = '',
    String? apikey =
        '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',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl(
      apikey: apikey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'cancelFineTune',
      apiUrl: '${baseUrl}/fine-tunes/${fineTuneId}/cancel',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListFineTuneEventsCall {
  Future<ApiCallResponse> call({
    String? fineTuneId = '',
    bool? stream,
    String? apiKeyAuth = '',
    String? apikey =
        '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',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl(
      apikey: apikey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'listFineTuneEvents',
      apiUrl: '${baseUrl}/fine-tunes/${fineTuneId}/events',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {
        'stream': stream,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListModelsCall {
  Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
    String? apikey =
        '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',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl(
      apikey: apikey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'listModels',
      apiUrl: '${baseUrl}/models',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RetrieveModelCall {
  Future<ApiCallResponse> call({
    String? model = '',
    String? apiKeyAuth = '',
    String? apikey =
        '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',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl(
      apikey: apikey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'retrieveModel',
      apiUrl: '${baseUrl}/models/${model}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteModelCall {
  Future<ApiCallResponse> call({
    String? model = '',
    String? apiKeyAuth = '',
    String? apikey =
        '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',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl(
      apikey: apikey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'deleteModel',
      apiUrl: '${baseUrl}/models/${model}',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateModerationCall {
  Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
    String? apikey =
        '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',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl(
      apikey: apikey,
    );

    final ffApiRequestBody = '''
{
  "input": "",
  "model": "text-moderation-stable"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createModeration',
      apiUrl: '${baseUrl}/moderations',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListAssistantsCall {
  Future<ApiCallResponse> call({
    int? limit,
    String? order = '',
    String? after = '',
    String? before = '',
    String? apiKeyAuth = '',
    String? apikey =
        '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',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl(
      apikey: apikey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'listAssistants',
      apiUrl: '${baseUrl}/assistants',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {
        'limit': limit,
        'order': order,
        'after': after,
        'before': before,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateAssistantCall {
  Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
    String? apikey =
        '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',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl(
      apikey: apikey,
    );

    final ffApiRequestBody = '''
{
  "model": "",
  "name": "",
  "description": "",
  "instructions": "",
  "tools": [
    ""
  ],
  "file_ids": [
    ""
  ],
  "metadata": {}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createAssistant',
      apiUrl: '${baseUrl}/assistants',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAssistantCall {
  Future<ApiCallResponse> call({
    String? assistantId = '',
    String? apiKeyAuth = '',
    String? apikey =
        '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',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl(
      apikey: apikey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getAssistant',
      apiUrl: '${baseUrl}/assistants/${assistantId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ModifyAssistantCall {
  Future<ApiCallResponse> call({
    String? assistantId = '',
    String? apiKeyAuth = '',
    String? apikey =
        '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',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl(
      apikey: apikey,
    );

    final ffApiRequestBody = '''
{
  "model": "",
  "name": "",
  "description": "",
  "instructions": "",
  "tools": [
    ""
  ],
  "file_ids": [
    ""
  ],
  "metadata": {}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'modifyAssistant',
      apiUrl: '${baseUrl}/assistants/${assistantId}',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteAssistantCall {
  Future<ApiCallResponse> call({
    String? assistantId = '',
    String? apiKeyAuth = '',
    String? apikey =
        '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',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl(
      apikey: apikey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'deleteAssistant',
      apiUrl: '${baseUrl}/assistants/${assistantId}',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateThreadCall {
  Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
    String? apikey =
        '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',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl(
      apikey: apikey,
    );

    final ffApiRequestBody = '''
{
  "messages": [
    {
      "role": "user",
      "content": "",
      "file_ids": [
        ""
      ],
      "metadata": {}
    }
  ],
  "metadata": {}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createThread',
      apiUrl: '${baseUrl}/threads',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetThreadCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    String? apiKeyAuth = '',
    String? apikey =
        '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',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl(
      apikey: apikey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getThread',
      apiUrl: '${baseUrl}/threads/${threadId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ModifyThreadCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    String? apiKeyAuth = '',
    String? apikey =
        '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',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl(
      apikey: apikey,
    );

    final ffApiRequestBody = '''
{
  "metadata": {}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'modifyThread',
      apiUrl: '${baseUrl}/threads/${threadId}',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteThreadCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    String? apiKeyAuth = '',
    String? apikey =
        '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',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl(
      apikey: apikey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'deleteThread',
      apiUrl: '${baseUrl}/threads/${threadId}',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListMessagesCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    int? limit,
    String? order = '',
    String? after = '',
    String? before = '',
    String? apiKeyAuth = '',
    String? apikey =
        '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',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl(
      apikey: apikey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'listMessages',
      apiUrl: '${baseUrl}/threads/${threadId}/messages',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {
        'limit': limit,
        'order': order,
        'after': after,
        'before': before,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateMessageCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    String? apiKeyAuth = '',
    String? apikey =
        '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',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl(
      apikey: apikey,
    );

    final ffApiRequestBody = '''
{
  "role": "user",
  "content": "",
  "file_ids": [
    ""
  ],
  "metadata": {}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createMessage',
      apiUrl: '${baseUrl}/threads/${threadId}/messages',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetMessageCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    String? messageId = '',
    String? apiKeyAuth = '',
    String? apikey =
        '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',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl(
      apikey: apikey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getMessage',
      apiUrl: '${baseUrl}/threads/${threadId}/messages/${messageId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ModifyMessageCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    String? messageId = '',
    String? apiKeyAuth = '',
    String? apikey =
        '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',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl(
      apikey: apikey,
    );

    final ffApiRequestBody = '''
{
  "metadata": {}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'modifyMessage',
      apiUrl: '${baseUrl}/threads/${threadId}/messages/${messageId}',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateThreadAndRunCall {
  Future<ApiCallResponse> call({
    String? apiKeyAuth = '',
    String? apikey =
        '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',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl(
      apikey: apikey,
    );

    final ffApiRequestBody = '''
{
  "assistant_id": "",
  "thread": {
    "messages": [
      {
        "role": "user",
        "content": "",
        "file_ids": [
          ""
        ],
        "metadata": {}
      }
    ],
    "metadata": {}
  },
  "model": "",
  "instructions": "",
  "tools": [
    ""
  ],
  "metadata": {}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createThreadAndRun',
      apiUrl: '${baseUrl}/threads/runs',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListRunsCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    int? limit,
    String? order = '',
    String? after = '',
    String? before = '',
    String? apiKeyAuth = '',
    String? apikey =
        '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',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl(
      apikey: apikey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'listRuns',
      apiUrl: '${baseUrl}/threads/${threadId}/runs',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {
        'limit': limit,
        'order': order,
        'after': after,
        'before': before,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateRunCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    String? apiKeyAuth = '',
    String? apikey =
        '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',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl(
      apikey: apikey,
    );

    final ffApiRequestBody = '''
{
  "assistant_id": "",
  "model": "",
  "instructions": "",
  "tools": [
    ""
  ],
  "metadata": {}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createRun',
      apiUrl: '${baseUrl}/threads/${threadId}/runs',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetRunCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    String? runId = '',
    String? apiKeyAuth = '',
    String? apikey =
        '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',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl(
      apikey: apikey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getRun',
      apiUrl: '${baseUrl}/threads/${threadId}/runs/${runId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ModifyRunCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    String? runId = '',
    String? apiKeyAuth = '',
    String? apikey =
        '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',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl(
      apikey: apikey,
    );

    final ffApiRequestBody = '''
{
  "metadata": {}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'modifyRun',
      apiUrl: '${baseUrl}/threads/${threadId}/runs/${runId}',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SubmitToolOuputsToRunCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    String? runId = '',
    String? apiKeyAuth = '',
    String? apikey =
        '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',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl(
      apikey: apikey,
    );

    final ffApiRequestBody = '''
{
  "tool_outputs": [
    {
      "tool_call_id": "",
      "output": ""
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'submitToolOuputsToRun',
      apiUrl:
          '${baseUrl}/threads/${threadId}/runs/${runId}/submit_tool_outputs',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CancelRunCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    String? runId = '',
    String? apiKeyAuth = '',
    String? apikey =
        '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',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl(
      apikey: apikey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'cancelRun',
      apiUrl: '${baseUrl}/threads/${threadId}/runs/${runId}/cancel',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListRunStepsCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    String? runId = '',
    int? limit,
    String? order = '',
    String? after = '',
    String? before = '',
    String? apiKeyAuth = '',
    String? apikey =
        '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',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl(
      apikey: apikey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'listRunSteps',
      apiUrl: '${baseUrl}/threads/${threadId}/runs/${runId}/steps',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {
        'limit': limit,
        'order': order,
        'after': after,
        'before': before,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetRunStepCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    String? runId = '',
    String? stepId = '',
    String? apiKeyAuth = '',
    String? apikey =
        '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',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl(
      apikey: apikey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getRunStep',
      apiUrl: '${baseUrl}/threads/${threadId}/runs/${runId}/steps/${stepId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListAssistantFilesCall {
  Future<ApiCallResponse> call({
    String? assistantId = '',
    int? limit,
    String? order = '',
    String? after = '',
    String? before = '',
    String? apiKeyAuth = '',
    String? apikey =
        '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',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl(
      apikey: apikey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'listAssistantFiles',
      apiUrl: '${baseUrl}/assistants/${assistantId}/files',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {
        'limit': limit,
        'order': order,
        'after': after,
        'before': before,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateAssistantFileCall {
  Future<ApiCallResponse> call({
    String? assistantId = '',
    String? apiKeyAuth = '',
    String? apikey =
        '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',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl(
      apikey: apikey,
    );

    final ffApiRequestBody = '''
{
  "file_id": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createAssistantFile',
      apiUrl: '${baseUrl}/assistants/${assistantId}/files',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAssistantFileCall {
  Future<ApiCallResponse> call({
    String? assistantId = '',
    String? fileId = '',
    String? apiKeyAuth = '',
    String? apikey =
        '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',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl(
      apikey: apikey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getAssistantFile',
      apiUrl: '${baseUrl}/assistants/${assistantId}/files/${fileId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteAssistantFileCall {
  Future<ApiCallResponse> call({
    String? assistantId = '',
    String? fileId = '',
    String? apiKeyAuth = '',
    String? apikey =
        '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',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl(
      apikey: apikey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'deleteAssistantFile',
      apiUrl: '${baseUrl}/assistants/${assistantId}/files/${fileId}',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListMessageFilesCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    String? messageId = '',
    int? limit,
    String? order = '',
    String? after = '',
    String? before = '',
    String? apiKeyAuth = '',
    String? apikey =
        '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',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl(
      apikey: apikey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'listMessageFiles',
      apiUrl: '${baseUrl}/threads/${threadId}/messages/${messageId}/files',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {
        'limit': limit,
        'order': order,
        'after': after,
        'before': before,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetMessageFileCall {
  Future<ApiCallResponse> call({
    String? threadId = '',
    String? messageId = '',
    String? fileId = '',
    String? apiKeyAuth = '',
    String? apikey =
        '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',
  }) async {
    final baseUrl = OpenAIAPIGroup.getBaseUrl(
      apikey: apikey,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getMessageFile',
      apiUrl:
          '${baseUrl}/threads/${threadId}/messages/${messageId}/files/${fileId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${apiKeyAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End OpenAI API Group Code

class CreatePaymentOrderCall {
  static Future<ApiCallResponse> call({
    String? customerEmail = '',
    String? customerPhone = '',
    String? orderId = '',
    double? orderAmount,
    String? orderCurrency = '',
    String? customerId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "customer_details": {
    "customer_id": "${customerId}",
    "customer_email": "${customerEmail}",
    "customer_phone": "${customerPhone}"
  },
  "order_id": "${orderId}",
  "order_amount": ${orderAmount},
  "order_currency": "${orderCurrency}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CreatePayment Order',
      apiUrl: 'https://api.cashfree.com/pg/orders',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'content-type': 'application/json',
        'x-api-version': '2023-08-01',
        'x-client-id': '71450858e1953f87640d3984ff805417',
        'x-client-secret':
            'cfsk_ma_prod_bfeb62186fa20d98310e7186aa936e29_fe26addc',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? cforderid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cf_order_id''',
      ));
  static String? createdat(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.created_at''',
      ));
  static String? customerdetailscustomerid(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.customer_details.customer_id''',
      ));
  static String? customerdetailscustomeremail(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.customer_details.customer_email''',
      ));
  static String? customerdetailscustomerphone(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.customer_details.customer_phone''',
      ));
  static String? entity(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.entity''',
      ));
  static int? orderamount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.order_amount''',
      ));
  static String? ordercurrency(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.order_currency''',
      ));
  static String? orderid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.order_id''',
      ));
  static String? paymentsessionid(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.payment_session_id''',
      ));
  static String? orderstatus(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.order_status''',
      ));
  static String? orderexpirytime(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.order_expiry_time''',
      ));
}

class CreatePaymentOrderCopyCall {
  static Future<ApiCallResponse> call({
    String? customerEmail = '',
    String? customerPhone = '',
    String? orderId = '',
    double? orderAmount,
    String? orderCurrency = '',
    String? customerId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "customer_details": {
    "customer_id": "${customerId}",
    "customer_email": "${customerEmail}",
    "customer_phone": "${customerPhone}"
  },
  "order_id": "${orderId}",
  "order_amount": ${orderAmount},
  "order_currency": "${orderCurrency}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CreatePayment Order Copy',
      apiUrl: 'https://api.cashfree.com/pg/orders',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'content-type': 'application/json',
        'x-api-version': '2023-08-01',
        'x-client-id': '71450858e1953f87640d3984ff805417',
        'x-client-secret':
            'cfsk_ma_prod_bfeb62186fa20d98310e7186aa936e29_fe26addc',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? cforderid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cf_order_id''',
      ));
  static String? createdat(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.created_at''',
      ));
  static String? customerdetailscustomerid(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.customer_details.customer_id''',
      ));
  static String? customerdetailscustomeremail(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.customer_details.customer_email''',
      ));
  static String? customerdetailscustomerphone(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.customer_details.customer_phone''',
      ));
  static String? entity(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.entity''',
      ));
  static int? orderamount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.order_amount''',
      ));
  static String? ordercurrency(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.order_currency''',
      ));
  static String? orderid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.order_id''',
      ));
  static String? paymentsessionid(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.payment_session_id''',
      ));
  static String? orderstatus(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.order_status''',
      ));
  static String? orderexpirytime(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.order_expiry_time''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
