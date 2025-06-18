# constitutionsimplified

A new Flutter project.

## Getting Started

FlutterFlow projects are built to run on the Flutter _stable_ release.

## OpenAI API

The AI chat page uses the OpenAI API. Provide your API key when running the
application:

```bash
flutter run --dart-define=OPENAI_API_KEY=sk-YOURKEY
```

If the key is not supplied, the chat page will display an error message.

The AI chat conversation is stored locally so you can resume where you left
off. Use the trash icon in the app bar to clear the history when needed. A
confirmation dialog prevents accidental deletion, and messages include
timestamps for easy reference. The chat list scrolls automatically to show the
newest message. Long press any message to copy it to the clipboard. A loading
indicator at the top of the screen lets you know when the assistant is
generating a response.
