import 'package:flutter/material.dart';

class SamplePage034 extends StatefulWidget {
  const SamplePage034({
    super.key,
  });

  @override
  State<SamplePage034> createState() => _SamplePage034State();
}

class _SamplePage034State extends State<SamplePage034> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final orientation = MediaQuery.of(context).orientation;
    final textScaleFactor = MediaQuery.of(context).textScaleFactor;
    return Scaffold(
      appBar: AppBar(
        title: const Text('MediaQuery'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Text('size : $size'),
              Text('orientation : $orientation'),
              Text('textScaleFactor : $textScaleFactor'),
            ],
          ),
        ),
      ),
    );
  }
}
