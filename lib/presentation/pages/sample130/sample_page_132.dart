import 'package:flutter/material.dart';

class SamplePage132 extends StatefulWidget {
  const SamplePage132({
    super.key,
  });

  @override
  State<SamplePage132> createState() => _SamplePage132State();
}

class _SamplePage132State extends State<SamplePage132> {
  List<Color> _colors = [
    Colors.white,
    Colors.white,
    Colors.white,
  ];
  List<String> _labels = [
    'Unfocused',
    'Unfocused',
    'Unfocused',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Focus'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Focus(
                onFocusChange: (focused) {
                  setState(() {
                    _colors[0] = focused ? Colors.black26 : Colors.white;
                    _labels[0] = focused ? 'Focused' : 'Unfocused';
                  });
                },
                child: Center(
                  child: Container(
                    width: 300,
                    height: 50,
                    alignment: Alignment.center,
                    color: _colors[0],
                    child: Text(_labels[0]),
                  ),
                ),
              ),
              Focus(
                onFocusChange: (focused) {
                  setState(() {
                    _colors[1] = focused ? Colors.black26 : Colors.white;
                    _labels[1] = focused ? 'Focused' : 'Unfocused';
                  });
                },
                child: Center(
                  child: Container(
                    width: 300,
                    height: 50,
                    alignment: Alignment.center,
                    color: _colors[1],
                    child: Text(_labels[1]),
                  ),
                ),
              ),
              Focus(
                onFocusChange: (focused) {
                  setState(() {
                    _colors[2] = focused ? Colors.black26 : Colors.white;
                    _labels[2] = focused ? 'Focused' : 'Unfocused';
                  });
                },
                child: Center(
                  child: Container(
                    width: 300,
                    height: 50,
                    alignment: Alignment.center,
                    color: _colors[2],
                    child: Text(_labels[2]),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
