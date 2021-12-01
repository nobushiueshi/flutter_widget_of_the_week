import 'package:flutter/material.dart';

class Widget005 extends StatefulWidget {
  const Widget005({Key? key}) : super(key: key);

  @override
  _Widget005State createState() => _Widget005State();
}

class _Widget005State extends State<Widget005> {
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
                children: const [
                  _ChildWidget005(),
                  _ChildWidget005(),
                  _ChildWidget005(),
                ],
              ),
              const Text('Opacityあり'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const _ChildWidget005(),
                  Opacity(
                    opacity: toggle ? 1 : 0,
                    child: const _ChildWidget005(
                      color: Colors.red,
                    ),
                  ),
                  const _ChildWidget005(),
                ],
              ),
              const Text('Stackを利用したサンプル'),
              Stack(
                children: [
                  const FlutterLogo(
                    size: 100,
                  ),
                  AnimatedOpacity(
                    opacity: toggle ? 1 : 0,
                    duration: const Duration(milliseconds: 500),
                    child: const _ChildWidget005(),
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

class _ChildWidget005 extends StatelessWidget {
  const _ChildWidget005({
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
