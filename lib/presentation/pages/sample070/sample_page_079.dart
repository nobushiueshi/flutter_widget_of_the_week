import 'package:flutter/material.dart';

class SamplePage079 extends StatefulWidget {
  const SamplePage079({
    super.key,
  });

  @override
  State<SamplePage079> createState() => _SamplePage079State();
}

class _SamplePage079State extends State<SamplePage079>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..repeat();
    _animation = Tween<double>(
      begin: 1,
      end: 100,
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
        title: const Text('AnimatedWidget'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: _SamplePage079ButtonTransition(
            width: _animationController,
          ),
        ),
      ),
    );
  }
}

class _SamplePage079ButtonTransition extends AnimatedWidget {
  const _SamplePage079ButtonTransition({
    required Animation<double> width,
  }) : super(listenable: width);

  Animation<double> get _width => listenable as Animation<double>;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        side: BorderSide(width: _width.value),
      ),
      child: const Text('Click Me!'),
    );
  }
}
