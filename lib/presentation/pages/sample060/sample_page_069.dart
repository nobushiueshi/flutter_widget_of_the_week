import 'package:flutter/material.dart';

class SamplePage069 extends StatelessWidget {
  const SamplePage069({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListWheelScrollView'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Expanded(
                child: ListWheelScrollView(
                  itemExtent: 84,
                  offAxisFraction: -0.5,
                  children: List.generate(
                    30,
                    (index) => ColoredBox(
                      color: Colors.blue,
                      child: ListTile(
                        title: Text('index : $index'),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ListWheelScrollView(
                  itemExtent: 84,
                  useMagnifier: true,
                  magnification: 1.5,
                  children: List.generate(
                    30,
                    (index) => Container(
                      key: ValueKey(index),
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      color: Colors.blue,
                      child: ListTile(
                        title: Text('index : $index'),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
