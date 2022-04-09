import 'package:flutter/material.dart';

class SamplePage045 extends StatefulWidget {
  const SamplePage045({
    Key? key,
  }) : super(key: key);

  @override
  State<SamplePage045> createState() => _SamplePage045State();
}

class _SamplePage045State extends State<SamplePage045> {
  double _padding = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedPositioned'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            color: Colors.blue,
            child: AnimatedPadding(
              duration: const Duration(milliseconds: 300),
              padding: EdgeInsets.all(_padding),
              child: const Icon(
                Icons.padding,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _padding += 5.0;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
