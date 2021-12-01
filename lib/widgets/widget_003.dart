import 'package:flutter/material.dart';

class Widget003 extends StatelessWidget {
  const Widget003({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wrap'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Row'),
              Container(
                color: Colors.lightBlue,
                child: Row(
                  children: const [
                    _ChildWidget003(),
                    _ChildWidget003(),
                    _ChildWidget003(),
                    _ChildWidget003(),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              const Text('Wrap'),
              Container(
                color: Colors.lightBlue,
                child: Wrap(
                  direction: Axis.horizontal,
                  alignment: WrapAlignment.center,
                  spacing: 10,
                  runSpacing: 10,
                  children: const [
                    _ChildWidget003(),
                    _ChildWidget003(),
                    _ChildWidget003(),
                    _ChildWidget003(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ChildWidget003 extends StatelessWidget {
  const _ChildWidget003();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: Colors.red,
    );
  }
}
