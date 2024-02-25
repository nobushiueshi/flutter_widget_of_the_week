import 'package:flutter/material.dart';

class SamplePage038 extends StatelessWidget {
  const SamplePage038({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AspectRatio'),
        centerTitle: true,
      ),
      body: const SafeArea(
        child: Center(
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 3 / 1,
                child: _SamplePage038Child(),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: AspectRatio(
                    aspectRatio: 3 / 1,
                    child: _SamplePage038Child(
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SamplePage038Child extends StatelessWidget {
  const _SamplePage038Child({
    this.color = Colors.blue,
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: color,
    );
  }
}
