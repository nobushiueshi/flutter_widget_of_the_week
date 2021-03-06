import 'package:flutter/material.dart';

class SamplePage048 extends StatelessWidget {
  const SamplePage048({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ConstrainedBox'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('ConstrainedBoxで制限がない場合'),
              const SizedBox(height: 10),
              const Text(
                'Delicious Candy',
                textAlign: TextAlign.center,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Tap Me!'),
              ),
              const SizedBox(height: 30),
              const Text('ConstrainedBoxで制限がある場合'),
              const SizedBox(height: 10),
              ConstrainedBox(
                constraints: const BoxConstraints(
                  maxWidth: 100,
                ),
                child: const Text(
                  'Delicious Candy',
                  textAlign: TextAlign.center,
                ),
              ),
              ConstrainedBox(
                constraints: const BoxConstraints(
                  minHeight: 100,
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Tap Me!'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
