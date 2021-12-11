import 'package:flutter/material.dart';

class SamplePage007 extends StatefulWidget {
  const SamplePage007({
    Key? key,
  }) : super(key: key);

  @override
  _SamplePage007State createState() => _SamplePage007State();
}

class _SamplePage007State extends State<SamplePage007>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _animation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(_animationController);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FadeTransition'),
      ),
      body: SafeArea(
        child: Center(
          child: FadeTransition(
            opacity: _animation,
            child: const FlutterLogo(
              size: 100,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (!_animationController.isCompleted ||
              !_animationController.isAnimating) {
            _animationController.forward();
          }
        },
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
