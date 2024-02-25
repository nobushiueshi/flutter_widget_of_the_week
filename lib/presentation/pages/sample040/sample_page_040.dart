import 'package:flutter/material.dart';

class SamplePage040 extends StatelessWidget {
  const SamplePage040({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Placeholder'),
        centerTitle: true,
      ),
      body: const SafeArea(
        child: Center(
          child: Column(
            children: [
              Flexible(
                child: ColoredBox(
                  color: Colors.purple,
                ),
              ),
              Flexible(
                child: Row(
                  children: [
                    Flexible(
                      child: ColoredBox(
                        color: Colors.yellow,
                      ),
                    ),
                    Flexible(
                      child: Placeholder(),
                    ),
                    Flexible(
                      child: ColoredBox(
                        color: Colors.yellow,
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                child: ColoredBox(
                  color: Colors.cyan,
                ),
              ),
              Flexible(
                child: Placeholder(),
              ),
              Flexible(
                child: ColoredBox(
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
