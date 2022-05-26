import 'package:flutter/material.dart';

class SamplePage002 extends StatelessWidget {
  const SamplePage002({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expanded'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Expandedなし'),
              Container(
                padding: const EdgeInsets.all(5),
                color: Colors.lightBlue,
                height: 80,
                child: Row(
                  children: const [
                    _SamplePage002Child(),
                    _SamplePage002Child(
                      color: Colors.purple,
                    ),
                    _SamplePage002Child(),
                    _SamplePage002Child(
                      color: Colors.purple,
                    ),
                    _SamplePage002Child(),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              const Text('Expanded Flexなし'),
              Container(
                padding: const EdgeInsets.all(5),
                color: Colors.lightBlue,
                height: 80,
                child: Row(
                  children: const [
                    _SamplePage002Child(),
                    Expanded(
                      child: _SamplePage002Child(
                        color: Colors.purple,
                      ),
                    ),
                    _SamplePage002Child(),
                    Expanded(
                      child: _SamplePage002Child(
                        color: Colors.purple,
                      ),
                    ),
                    _SamplePage002Child(),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              const Text('Expanded Flexあり'),
              Container(
                padding: const EdgeInsets.all(5),
                color: Colors.lightBlue,
                height: 80,
                child: Row(
                  children: const [
                    _SamplePage002Child(),
                    Expanded(
                      flex: 2,
                      child: _SamplePage002Child(
                        color: Colors.purple,
                      ),
                    ),
                    _SamplePage002Child(),
                    Expanded(
                      child: _SamplePage002Child(
                        color: Colors.purple,
                      ),
                    ),
                    _SamplePage002Child(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SamplePage002Child extends StatelessWidget {
  const _SamplePage002Child({
    this.color = Colors.yellow,
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      height: 50,
      width: 50,
      color: color,
    );
  }
}
