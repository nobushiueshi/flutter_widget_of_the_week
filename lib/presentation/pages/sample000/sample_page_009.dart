import 'package:flutter/material.dart';

class SamplePage009 extends StatefulWidget {
  const SamplePage009({
    Key? key,
  }) : super(key: key);

  @override
  _SamplePage009State createState() => _SamplePage009State();
}

class _SamplePage009State extends State<SamplePage009> {
  final _pageController = PageController(initialPage: 0);

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
                children: [
                  Container(
                    color: Colors.red,
                    child: const Center(
                      child: Text('Page 1'),
                    ),
                  ),
                  Container(
                    color: Colors.blue,
                    child: const Center(
                      child: Text('Page 2'),
                    ),
                  ),
                  Container(
                    color: Colors.green,
                    child: const Center(
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
