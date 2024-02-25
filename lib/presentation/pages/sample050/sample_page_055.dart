import 'package:flutter/material.dart';

class SamplePage055 extends StatelessWidget {
  const SamplePage055({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SelectableText'),
        centerTitle: true,
      ),
      body: const SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('選択できないテキスト'),
              SizedBox(height: 100),
              SelectableText('選択できるテキスト'),
            ],
          ),
        ),
      ),
    );
  }
}
