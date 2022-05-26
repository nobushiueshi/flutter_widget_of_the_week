import 'package:flutter/material.dart';

class SamplePage026 extends StatelessWidget {
  const SamplePage026({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Positioned'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Text('Positioned.fillを使った場合'),
              Container(
                width: 100,
                height: 100,
                color: Colors.red[100],
                child: Stack(
                  children: const [
                    Positioned.fill(
                      child: FlutterLogo(),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text('配置やサイズの指定もできる'),
              Container(
                width: 300,
                height: 300,
                color: Colors.blue[100],
                child: Stack(
                  children: const [
                    Positioned(
                      left: 100,
                      top: 50,
                      child: FlutterLogo(),
                    ),
                    Positioned(
                      right: 10,
                      bottom: 10,
                      width: 50,
                      height: 50,
                      child: FlutterLogo(),
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
