import 'package:flutter/material.dart';

class SamplePage008 extends StatefulWidget {
  const SamplePage008({
    super.key,
  });

  @override
  SamplePage008State createState() => SamplePage008State();
}

class SamplePage008State extends State<SamplePage008> {
  bool toggle = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FloatingActionButton'),
      ),
      body: const Center(
        child: Text('FloatingActionButton Sample'),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.yellow,
        child: Container(height: 50),
      ),
      floatingActionButtonLocation: toggle
          ? FloatingActionButtonLocation.centerDocked
          : FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            toggle = !toggle;
          });
        },
        child: const Icon(Icons.loop),
      ),
    );
  }
}
