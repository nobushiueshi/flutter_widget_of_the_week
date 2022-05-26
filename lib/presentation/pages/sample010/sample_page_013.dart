import 'package:flutter/material.dart';

class SamplePage013 extends StatelessWidget {
  const SamplePage013({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FadeInImage'),
      ),
      body: SafeArea(
        child: Center(
          child: FadeInImage.assetNetwork(
            placeholder: 'assets/sample.png',
            image:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Google-flutter-logo.svg/440px-Google-flutter-logo.svg.png',
            height: 50,
          ),
        ),
      ),
    );
  }
}
