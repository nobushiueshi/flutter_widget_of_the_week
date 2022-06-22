import 'package:flutter/material.dart';

class SamplePage080 extends StatelessWidget {
  const SamplePage080({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Padding'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Center(
                child: Text('Paddingなし'),
              ),
              _SamplePage080ColorBox(
                color: Colors.blue.shade900,
                scale: 3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _SamplePage080ColorBox(
                    color: Colors.blue.shade500,
                  ),
                  _SamplePage080ColorBox(
                    color: Colors.yellow.shade700,
                  ),
                  const _SamplePage080ColorBox(
                    color: Colors.grey,
                  ),
                ],
              ),
              const _SamplePage080ColorBox(
                color: Colors.lightBlue,
                scale: 3,
              ),
              const SizedBox(height: 30),
              const Center(
                child: Text('Paddingあり'),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: _SamplePage080ColorBox(
                  color: Colors.blue.shade900,
                  scale: 3,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: _SamplePage080ColorBox(
                      color: Colors.blue.shade500,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: _SamplePage080ColorBox(
                      color: Colors.yellow.shade700,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8),
                    child: _SamplePage080ColorBox(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(8),
                child: _SamplePage080ColorBox(
                  color: Colors.lightBlue,
                  scale: 3,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SamplePage080ColorBox extends StatelessWidget {
  const _SamplePage080ColorBox({
    this.color = Colors.blue,
    this.scale = 1.0,
  });

  final Color color;
  final double scale;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: color,
      child: SizedBox(
        height: 64,
        width: 64 * scale,
      ),
    );
  }
}
