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
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Flexible(
                child: ColoredBox(
                  color: Colors.purple,
                ),
              ),
              Flexible(
                child: Row(
                  children: const [
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
              const Flexible(
                child: ColoredBox(
                  color: Colors.cyan,
                ),
              ),
              const Flexible(
                child: Placeholder(),
              ),
              const Flexible(
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
