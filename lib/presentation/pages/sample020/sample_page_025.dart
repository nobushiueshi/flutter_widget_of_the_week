import 'package:flutter/material.dart';

class SamplePage025 extends StatelessWidget {
  const SamplePage025({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Align'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Text('子Widgetの配置を指定'),
              Container(
                width: 100,
                height: 100,
                color: Colors.red[100],
                child: const Align(
                  alignment: Alignment.bottomRight,
                  child: Text('右下'),
                ),
              ),
              const SizedBox(height: 20),
              const Text('Stackと使うと相性が良い'),
              Container(
                width: 300,
                height: 300,
                color: Colors.blue[100],
                child: Stack(
                  children: const [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text('左上'),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Text('中央上'),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Text('右上'),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text('左中央'),
                    ),
                    Align(
                      child: Text('中央'),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text('右中央'),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text('左下'),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text('中央下'),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Text('右下'),
                    ),
                    Align(
                      alignment: Alignment(0.4, 0.4),
                      child: Text('数値指定'),
                    ),
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
