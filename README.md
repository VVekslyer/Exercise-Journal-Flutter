# Exercise Journal

A new Flutter project.

## Getting Started

Install flutter latest release (https://docs.flutter.dev/get-started/install).
Install the Flutter and Dart extensions for vscode.

Set up a device or emulator. You can use one of the following:

- Android
- iOS
- Web

Run the project:

`flutter run`

For a list of possible commands:

`flutter`

### IMPORTANT:

For projects with Firestore integration, you must first run the following commands to ensure the project compiles:

```
flutter pub get
flutter packages pub run build_runner build --delete-conflicting-outputs
```

This command creates the generated files that parse each Record from Firestore into a schema object.

### Getting started continued:

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
