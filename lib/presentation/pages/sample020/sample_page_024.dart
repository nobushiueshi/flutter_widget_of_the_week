import 'dart:ui';

import 'package:flutter/material.dart';

class SamplePage024 extends StatefulWidget {
  const SamplePage024({
    super.key,
  });

  @override
  SamplePage024State createState() => SamplePage024State();
}

class SamplePage024State extends State<SamplePage024> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BackdropFilter'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Text('なぜかブラーがかかってしまうテキスト'),
              Stack(
                children: [
                  Image.asset(
                    'assets/genba_neko.png',
                    width: 128,
                    height: 128,
                  ),
                  Positioned.fill(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 3,
                        sigmaY: 3,
                      ),
                      child: ColoredBox(
                        color: Colors.black.withOpacity(0),
                      ),
                    ),
                  ),
                ],
              ),
              const Text('ブラー'),
            ],
          ),
        ),
      ),
    );
  }
}
