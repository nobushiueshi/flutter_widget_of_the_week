import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SamplePage158 extends StatefulWidget {
  const SamplePage158({
    super.key,
  });

  @override
  State<SamplePage158> createState() => _SamplePage158State();
}

class _SamplePage158State extends State<SamplePage158> {
  final jsonString = '{"message":"Hello, World!"}';

  String message = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Isolates'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(message),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final data = await compute(loadJson, jsonString);
          setState(() {
            message = data.message;
          });
        },
        child: const Icon(Icons.refresh_outlined),
      ),
    );
  }
}

SamplePage158Message loadJson(String jsonString) {
  // ここで重い処理を実行する.
  final json = jsonDecode(jsonString) as Map<String, dynamic>;

  return SamplePage158Message.fromJson(json);
}

class SamplePage158Message {
  SamplePage158Message({
    required this.message,
  });

  factory SamplePage158Message.fromJson(Map<String, dynamic> json) =>
      SamplePage158Message(
        message: json['message'] as String,
      );

  final String message;
}
