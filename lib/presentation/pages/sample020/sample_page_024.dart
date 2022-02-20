import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class SamplePage024 extends StatefulWidget {
  const SamplePage024({
    Key? key,
  }) : super(key: key);

  @override
  _SamplePage024State createState() => _SamplePage024State();
}

class _SamplePage024State extends State<SamplePage024> {
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
                      child: Container(
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

class _SamplePage023Icon extends StatelessWidget {
  const _SamplePage023Icon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 64,
      height: 64,
      color: Colors.blue,
      child: const Icon(
        Icons.catching_pokemon,
        color: Colors.white,
      ),
    );
  }
}
