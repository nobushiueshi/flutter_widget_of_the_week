import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';

class SamplePage135 extends StatefulWidget {
  const SamplePage135({
    super.key,
  });

  @override
  State<SamplePage135> createState() => _SamplePage135State();
}

class _SamplePage135State extends State<SamplePage135> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firebase UI for Auth',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => SignInScreen(
              providers: [EmailAuthProvider()],
            ),
      },
    );
  }
}
