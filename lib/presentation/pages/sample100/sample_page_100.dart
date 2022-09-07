import 'package:flutter/material.dart';

class SamplePage100 extends StatefulWidget {
  const SamplePage100({
    super.key,
  });

  @override
  State<SamplePage100> createState() => _SamplePage100State();
}

class _SamplePage100State extends State<SamplePage100> {
  bool isStacked = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FlutterLogo'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const FlutterLogo(
                size: 128,
              ),
              const FlutterLogo(
                size: 128,
                style: FlutterLogoStyle.horizontal,
              ),
              const FlutterLogo(
                size: 128,
                style: FlutterLogoStyle.stacked,
              ),
              FlutterLogo(
                size: 128,
                style: isStacked
                    ? FlutterLogoStyle.stacked
                    : FlutterLogoStyle.horizontal,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            isStacked = !isStacked;
          });
        },
        child: const Icon(Icons.replay_outlined),
      ),
    );
  }
}
