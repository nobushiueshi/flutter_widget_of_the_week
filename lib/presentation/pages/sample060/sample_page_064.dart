import 'package:flutter/material.dart';

class SamplePage064 extends StatelessWidget {
  const SamplePage064({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TweenAnimationBuilder'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: TweenAnimationBuilder<Color?>(
            duration: const Duration(seconds: 3),
            tween: ColorTween(
              begin: Colors.white,
              end: Colors.orange,
            ),
            builder: (context, color, child) {
              return ColorFiltered(
                colorFilter: ColorFilter.mode(
                  color ?? Colors.transparent,
                  BlendMode.modulate,
                ),
                child: child,
              );
            },
            child: const Icon(
              Icons.flutter_dash,
              size: 64,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
