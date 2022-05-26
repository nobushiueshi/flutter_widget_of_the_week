import 'package:flutter/material.dart';

class SamplePage005 extends StatefulWidget {
  const SamplePage005({
    super.key,
  });

  @override
  SamplePage005State createState() => SamplePage005State();
}

class SamplePage005State extends State<SamplePage005> {
  bool toggle = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Opacity'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Opacityなし'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const _SamplePage005Child(),
                  if (!toggle) const _SamplePage005Child(),
                  const _SamplePage005Child(),
                ],
              ),
              const Text('Opacityあり'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const _SamplePage005Child(),
                  Opacity(
                    opacity: toggle ? 0 : 1,
                    child: const _SamplePage005Child(
                      color: Colors.red,
                    ),
                  ),
                  const _SamplePage005Child(),
                ],
              ),
              const Text('Stackを利用したサンプル(AnimatedOpacity)'),
              Stack(
                children: [
                  const FlutterLogo(
                    size: 100,
                  ),
                  AnimatedOpacity(
                    opacity: toggle ? 1 : 0,
                    duration: const Duration(milliseconds: 500),
                    child: const _SamplePage005Child(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.change_circle),
        onPressed: () {
          setState(() {
            toggle = !toggle;
          });
        },
      ),
    );
  }
}

class _SamplePage005Child extends StatelessWidget {
  const _SamplePage005Child({
    this.color = Colors.blue,
  });

  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: color,
    );
  }
}
