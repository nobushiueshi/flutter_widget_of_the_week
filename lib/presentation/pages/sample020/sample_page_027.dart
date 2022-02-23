import 'dart:math';

import 'package:flutter/material.dart';

class SamplePage027 extends StatefulWidget {
  const SamplePage027({
    Key? key,
  }) : super(key: key);

  @override
  _SamplePage027State createState() => _SamplePage027State();
}

class _SamplePage027State extends State<SamplePage027>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 4),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final animation = Tween(
      begin: 0,
      end: 2 * pi,
    ).animate(_controller);
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedBuilder'),
      ),
      body: SafeArea(
        child: Center(
          child: AnimatedBuilder(
            animation: animation,
            child: const FlutterLogo(
              size: 100,
            ),
            builder: (context, child) {
              return Transform.rotate(
                angle: animation.value.toDouble(),
                child: child,
              );
            },
          ),
        ),
      ),
    );
  }
}
