import 'dart:convert';
import 'dart:isolate';

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
          final data = await Isolate.run(() {
            // ここで重い処理を実行する.
            final json = jsonDecode(jsonString) as Map<String, String>;

            return SamplePage158Message.fromJson(json);
          });
          setState(() {
            message = data.message;
          });
        },
        child: const Icon(Icons.refresh_outlined),
      ),
    );
  }
}

class SamplePage158Message {
  SamplePage158Message({
    required this.message,
  });

  factory SamplePage158Message.fromJson(Map<String, String> json) =>
      SamplePage158Message(
        message: json['message'] ?? '',
      );

  final String message;
}
