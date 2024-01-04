# flutter_todo_app

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Code code code

### Set up

- Create flutter project:
    + Visual Studio Code
    + F1 -> Flutter: create project
    + Clean project: flutter clean
    + Run code (terminal): flutter run

- Create a Github Repository:
    + Create repository
    + Init git in terminal

- Add google services plugin:
    1) app/build.gradel: apply plugin: 'com.google.gms.google-services'
    2) build.gradel: classpath 'com.google.gms:google-services:4.3.5'

- Setup Firebase for Flutter project: 
    + [Create Firebase project](https://console.firebase.google.com/)
    + Firebase: with Flutter option
    + Addd [firebase-core](https://pub.dev/packages/firebase_core/)
    + Add [firebase-auth](https://pub.dev/packages/firebase_auth)
    + Add 'await Firebase.initializeApp();' in **main.dart**

### Authentication

- Enable Email/Password option in Firebase/Authentication
- Add an firebase instance (see commit "Email & Password - Firebase Authentication")