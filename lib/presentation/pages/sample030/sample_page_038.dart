import 'package:flutter/material.dart';

class SamplePage038 extends StatelessWidget {
  const SamplePage038({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AspectRatio'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: const [
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
    Key? key,
    this.color = Colors.blue,
  }) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
    );
  }
}
