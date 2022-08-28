import 'package:flutter/material.dart';

class SamplePage098 extends StatelessWidget {
  const SamplePage098({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scrollbar'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Scrollbar(
          thumbVisibility: true,
          trackVisibility: true,
          child: ListView.builder(
            itemCount: 50,
            itemExtent: 50,
            itemBuilder: (context, index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.blue[100 * (index % 9)],
                child: Text('List Item $index'),
              );
            },
          ),
        ),
      ),
    );
  }
}
