import 'package:flutter/material.dart';

class Widget004 extends StatefulWidget {
  const Widget004({Key? key}) : super(key: key);

  @override
  _Widget004State createState() => _Widget004State();
}

class _Widget004State extends State<Widget004> {
  bool toggle = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedContainer'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Container'),
              Container(
                color: toggle ? Colors.red : Colors.blue,
                width: toggle ? 100 : 150,
                height: 150,
                child: const Icon(
                  Icons.face,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 50),
              const Text('AnimatedContainer'),
              AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeIn,
                color: toggle ? Colors.red : Colors.blue,
                width: toggle ? 100 : 150,
                height: 150,
                child: const Icon(
                  Icons.face,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            toggle = !toggle;
          });
        },
        child: const Icon(Icons.change_circle),
      ),
    );
  }
}
