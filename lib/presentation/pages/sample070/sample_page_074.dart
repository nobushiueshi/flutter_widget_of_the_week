import 'package:flutter/material.dart';

class SamplePage074 extends StatefulWidget {
  const SamplePage074({
    super.key,
  });

  @override
  State<SamplePage074> createState() => _SamplePage074State();
}

class _SamplePage074State extends State<SamplePage074>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    )..repeat();
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
        title: const Text(
          'CircularProgressIndicator & LinearProgressIndicator',
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              CircularProgressIndicator(
                valueColor: _animationController.drive(
                  ColorTween(
                    begin: Colors.yellow,
                    end: Colors.blue,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const SizedBox(
                width: 100,
                child: LinearProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                  backgroundColor: Colors.grey,
                ),
              ),
              const SizedBox(height: 30),
              TweenAnimationBuilder<double>(
                duration: const Duration(seconds: 5),
                tween: Tween<double>(
                  begin: 0,
                  end: 1,
                ),
                builder: (context, value, child) {
                  return Column(
                    children: [
                      CircularProgressIndicator(
                        value: value,
                      ),
                      const SizedBox(height: 30),
                      SizedBox(
                        width: 100,
                        child: LinearProgressIndicator(
                          value: value,
                        ),
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
