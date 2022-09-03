import 'package:flutter/material.dart';

class SamplePage036 extends StatefulWidget {
  const SamplePage036({
    super.key,
  });

  @override
  State<SamplePage036> createState() => _SamplePage036State();
}

class _SamplePage036State extends State<SamplePage036> {
  var _color = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('InheritedWidget'),
        centerTitle: true,
      ),
      body: _SamplePage036Color(
        color: _color,
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _color = Colors.blue;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                    child: const Text('Blue'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _color = Colors.yellow;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.yellow,
                    ),
                    child: const Text('Yellow'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _color = Colors.red;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                    ),
                    child: const Text('Red'),
                  ),
                ],
              ),
              const SizedBox(height: 100),
              const _SamplePage036Child(),
            ],
          ),
        ),
      ),
    );
  }
}

class _SamplePage036Color extends InheritedWidget {
  const _SamplePage036Color({
    required this.color,
    required super.child,
  });

  final Color color;

  static _SamplePage036Color of(BuildContext context) {
    final result =
        context.dependOnInheritedWidgetOfExactType<_SamplePage036Color>();
    assert(result != null, 'No _SamplePage036Color found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(covariant _SamplePage036Color oldWidget) =>
      color != oldWidget.color;
}

class _SamplePage036Child extends StatelessWidget {
  const _SamplePage036Child();

  @override
  Widget build(BuildContext context) {
    final color = _SamplePage036Color.of(context).color;
    return Container(
      width: 100,
      height: 100,
      color: color,
    );
  }
}
