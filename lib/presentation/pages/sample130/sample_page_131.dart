import 'package:flutter/material.dart';

class SamplePage131 extends StatefulWidget {
  const SamplePage131({
    super.key,
  });

  @override
  State<SamplePage131> createState() => _SamplePage131State();
}

class _SamplePage131State extends State<SamplePage131> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextStyle'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('Hello, Flutter!'),
              const SizedBox(height: 20),
              const Text(
                'Hello, Flutter!',
                style: TextStyle(),
              ),
              const SizedBox(height: 20),
              Text(
                'Hello, Flutter!',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              const SizedBox(height: 20),
              Text(
                'Hello, Flutter!',
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: Colors.red,
                    ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Hello, Flutter!',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
