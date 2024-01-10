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
    + Add [firebase-core](https://pub.dev/packages/firebase_core/)
    + Add [firebase-auth](https://pub.dev/packages/firebase_auth)
    + Add 'await Firebase.initializeApp();' in **main.dart**

### Authentication

- Enable Email/Password option in Firebase/Authentication
- Add an firebase instance (see commit "Email & Password - Firebase Authentication")

### Create Login & SignUp Pages
- Do something after a 'try...catch...', have to bring it into 'try <>' and 'catch <>'. Not after 'try...catch...'

- Login & signup with Google
    + Get SHA-1 key (1): Open terminal in **/android/gradlew** and run **./gradlew signingReport** and copy the SHA-1 key
    + Get SHA-1 key (2):
        * Open cmdline in jdk bin: **C:\Program Files\Java\jdk-21.0.1\bi**n
        * Find keystore: **C:\Users\Admin\.android\debug.keystore**
        * Replace keystore in keytool cmd and run: **keytool -list -v -keystore C:\Users\Admin\.android\debug.keystore -alias androiddebugkey**
        * Enter keyword: **android**
        * Get SHA-1 key
    + Other ways to get SHA-1 key: [link 1](https://stackoverflow.com/questions/55496090/how-to-get-sha1-of-android-app-in-vs-code) or [link 2](https://developers.google.com/android/guides/client-auth)
    + [Fix error JAVA_HOME is not set](https://docs.oracle.com/cd/E19182-01/820-7851/inst_cli_jdk_javahome_t/index.html)
    + Add [GG sign-in package](https://pub.dev/packages/google_sign_in)
    + Add **service/auth_service.dart**: contain GG sign-in method
    + Add GG sign-in method to Sign Up Page
    
- Keep the user log in:
    + Uninstall the old version of app (login without logout causes issues)
    + Add [flutter_secure_storageflutter_secure_storage](https://pub.dev/packages/flutter_secure_storage) to store the access token. Make sure that the minimum sdk version is 18 (config in android/app/build.gradle)
    + Store the access token in AuthClass after sign in successfully
    + Check if token is null or not to decide which page should be show first (**main.dart**)

- Log out:
    + Add a log out icon in the navbar of homepage to test log out function
    + Create a log out method in AuthClass