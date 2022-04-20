import 'package:flutter/material.dart';

class SamplePage051 extends StatelessWidget {
  const SamplePage051({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FractionallySizedBox'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FractionallySizedBox(
                widthFactor: 0.7,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('70%'),
                ),
              ),
              const Flexible(
                child: FractionallySizedBox(
                  heightFactor: 0.1,
                ),
              ),
              FractionallySizedBox(
                widthFactor: 0.5,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('50%'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
