import 'package:flutter/material.dart';

class SamplePage052 extends StatelessWidget {
  const SamplePage052({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(index.toString()),
            );
          },
        ),
      ),
    );
  }
}
