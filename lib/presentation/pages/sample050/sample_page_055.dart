import 'package:flutter/material.dart';

class SamplePage055 extends StatelessWidget {
  const SamplePage055({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SelectableText'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
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
