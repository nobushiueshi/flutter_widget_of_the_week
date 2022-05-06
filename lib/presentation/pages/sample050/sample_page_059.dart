import 'package:flutter/material.dart';

class SamplePage059 extends StatefulWidget {
  const SamplePage059({
    Key? key,
  }) : super(key: key);

  @override
  State<SamplePage059> createState() => _SamplePage059State();
}

class _SamplePage059State extends State<SamplePage059> {
  bool _showFirst = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedCrossFade'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedCrossFade(
                firstChild: const CircleAvatar(
                  minRadius: 64,
                  backgroundColor: Colors.blue,
                  child: Text('Hello'),
                ),
                secondChild: const CircleAvatar(
                  minRadius: 64,
                  backgroundColor: Colors.red,
                  child: Text('Goodbye'),
                ),
                crossFadeState: _showFirst
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                duration: const Duration(milliseconds: 500),
              ),
              const SizedBox(height: 30),
              Container(
                padding: const EdgeInsets.all(20),
                color: Colors.green,
              ),
              AnimatedCrossFade(
                firstChild: const CircleAvatar(
                  minRadius: 32,
                  backgroundColor: Colors.blue,
                  child: Text('Hello'),
                ),
                secondChild: const CircleAvatar(
                  minRadius: 64,
                  backgroundColor: Colors.red,
                  child: Text('Goodbye'),
                ),
                layoutBuilder: (
                  topChild,
                  topChildKey,
                  bottomChild,
                  bottomChildKey,
                ) {
                  return Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.center,
                    children: [
                      Positioned(
                        key: bottomChildKey,
                        top: 0,
                        child: bottomChild,
                      ),
                      Positioned(
                        key: topChildKey,
                        child: topChild,
                      ),
                    ],
                  );
                },
                crossFadeState: _showFirst
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                duration: const Duration(milliseconds: 500),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                color: Colors.green,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _showFirst = !_showFirst;
          });
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
