import 'package:flutter/material.dart';

class SamplePage021 extends StatelessWidget {
  const SamplePage021({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LayoutBuilder'),
      ),
      body: SafeArea(
        child: LayoutBuilder(builder: (context, constrains) {
          if (constrains.maxWidth > 400) {
            return const Center(
              child: Text(
                'maxWidth > 400',
                style: TextStyle(color: Colors.red),
              ),
            );
          } else {
            return const Center(
              child: Text(
                'maxWidth >= 400',
                style: TextStyle(color: Colors.blue),
              ),
            );
          }
        }),
      ),
    );
  }
}
