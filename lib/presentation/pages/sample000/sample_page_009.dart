import 'package:flutter/material.dart';

class SamplePage009 extends StatefulWidget {
  const SamplePage009({
    super.key,
  });

  @override
  SamplePage009State createState() => SamplePage009State();
}

class SamplePage009State extends State<SamplePage009> {
  final _pageController = PageController();

  bool _toggle = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PageView'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Text('${_toggle ? '上下' : '左右'}スワイプ'),
            ),
            Expanded(
              child: PageView(
                controller: _pageController,
                scrollDirection: _toggle ? Axis.vertical : Axis.horizontal,
                children: const [
                  ColoredBox(
                    color: Colors.red,
                    child: Center(
                      child: Text('Page 1'),
                    ),
                  ),
                  ColoredBox(
                    color: Colors.blue,
                    child: Center(
                      child: Text('Page 2'),
                    ),
                  ),
                  ColoredBox(
                    color: Colors.green,
                    child: Center(
                      child: Text('Page 3'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _toggle = !_toggle;
          });
        },
        child: const Icon(Icons.loop),
      ),
    );
  }
}
