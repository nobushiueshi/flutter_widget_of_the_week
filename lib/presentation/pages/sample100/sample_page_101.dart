import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class SamplePage101 extends StatelessWidget {
  const SamplePage101({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('animated_text_kit'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedTextKit(
                animatedTexts: [
                  TyperAnimatedText('Android'),
                  TyperAnimatedText('iOS'),
                  TyperAnimatedText('Web'),
                  RotateAnimatedText('Linux'),
                  RotateAnimatedText('Windows'),
                  ScaleAnimatedText('Mac'),
                  ColorizeAnimatedText(
                    'LARRY PAGE',
                    textStyle: const TextStyle(
                      fontSize: 50,
                    ),
                    colors: [
                      Colors.purple,
                      Colors.blue,
                      Colors.yellow,
                      Colors.red,
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
