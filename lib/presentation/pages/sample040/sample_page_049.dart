import 'package:flutter/material.dart';

class SamplePage049 extends StatelessWidget {
  const SamplePage049({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.red,
                  ),
                  Container(
                    width: 90,
                    height: 90,
                    color: Colors.green,
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    color: Colors.blue,
                  ),
                  Container(
                    width: 70,
                    height: 70,
                    color: Colors.yellow[700],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Stack(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.grey,
                  ),
                  Positioned(
                    bottom: -50,
                    right: -50,
                    child: Container(
                      width: 80,
                      height: 80,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.grey,
                  ),
                  Positioned(
                    bottom: -50,
                    right: -50,
                    child: Container(
                      width: 80,
                      height: 80,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
