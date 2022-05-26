import 'package:flutter/material.dart';

class SamplePage003 extends StatelessWidget {
  const SamplePage003({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wrap'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Row'),
              ColoredBox(
                color: Colors.lightBlue,
                child: Row(
                  children: const [
                    _SamplePage003Child(),
                    _SamplePage003Child(),
                    _SamplePage003Child(),
                    _SamplePage003Child(),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              const Text('Wrap'),
              ColoredBox(
                color: Colors.lightBlue,
                child: Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 10,
                  runSpacing: 10,
                  children: const [
                    _SamplePage003Child(),
                    _SamplePage003Child(),
                    _SamplePage003Child(),
                    _SamplePage003Child(),
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

class _SamplePage003Child extends StatelessWidget {
  const _SamplePage003Child();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: Colors.red,
    );
  }
}
