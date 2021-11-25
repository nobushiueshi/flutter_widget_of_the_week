import 'package:flutter/material.dart';

class Widget002 extends StatelessWidget {
  const Widget002({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expanded'),
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(5),
            color: Colors.lightBlue,
            height: 80,
            child: Row(
              children: const [
                _ChildWidget002(),
                Expanded(
                  flex: 2,
                  child: _ChildWidget002(
                    color: Colors.purple,
                  ),
                ),
                _ChildWidget002(),
                Expanded(
                  flex: 1,
                  child: _ChildWidget002(
                    color: Colors.purple,
                  ),
                ),
                _ChildWidget002(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _ChildWidget002 extends StatelessWidget {
  const _ChildWidget002({
    Key? key,
    this.color = Colors.yellow,
  }) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      height: 50,
      width: 50,
      color: color,
    );
  }
}
