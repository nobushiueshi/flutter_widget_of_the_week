import 'package:flutter/material.dart';
import 'package:html/parser.dart';

class SamplePage106 extends StatelessWidget {
  const SamplePage106({
    super.key,
  });

  String get myHtml => '<body><div id="dash"><p>Hello</p></body>';

  @override
  Widget build(BuildContext context) {
    final document = parse(myHtml);
    return Scaffold(
      appBar: AppBar(
        title: const Text('html'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('document.outerHtml:'),
              Text(document.outerHtml),
              const SizedBox(height: 20),
              const Text('document.getElementById:'),
              Text(document.getElementById('dash')?.innerHtml ?? ''),
              const SizedBox(height: 20),
              const Text('document.querySelectorAll:'),
              Text(document.querySelectorAll('div > p')[0].innerHtml),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
