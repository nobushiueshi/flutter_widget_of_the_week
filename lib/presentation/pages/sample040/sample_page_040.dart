import 'package:flutter/material.dart';

class SamplePage040 extends StatelessWidget {
  const SamplePage040({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Placeholder'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Flexible(
                child: Container(
                  color: Colors.purple,
                ),
              ),
              Flexible(
                child: Row(
                  children: [
                    Flexible(
                      child: Container(
                        color: Colors.yellow,
                      ),
                    ),
                    const Flexible(
                      child: Placeholder(),
                    ),
                    Flexible(
                      child: Container(
                        color: Colors.yellow,
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                child: Container(
                  color: Colors.cyan,
                ),
              ),
              const Flexible(
                child: Placeholder(),
              ),
              Flexible(
                child: Container(
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
