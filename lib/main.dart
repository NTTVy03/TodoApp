import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  // All widgets need to be initialized before they can be used.
  WidgetsFlutterBinding.ensureInitialized();
  // Initialize Firebase.
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Create an instance of FirebaseAuth.
  // This is used to authenticate users to Firebase.
  firebase_auth.FirebaseAuth firebaseAuth = firebase_auth.FirebaseAuth.instance;

  void signUp() async {
    try {
      // Create a user with the email rand password.
      await firebaseAuth.createUserWithEmailAndPassword(
          email: 'trucvy@gmail.com.vn', password: '123456');
    } on firebase_auth.FirebaseAuthException catch (e) {
      print(e.message);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Firebase'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: signUp,
            child: const Text('Sign Up'),
          ),
        ),
      ),
    );
  }
}
