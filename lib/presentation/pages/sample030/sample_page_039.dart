import 'package:flutter/material.dart';

class SamplePage039 extends StatelessWidget {
  const SamplePage039({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LimitedBox'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('LimitedBoxなし'),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  for (var i = 0; i < 10; i++)
                    Container(
                      color: i.isEven ? Colors.blue : Colors.red,
                    ),
                ],
              ),
            ),
            const Divider(),
            const Text('LimitedBoxあり'),
            Expanded(
              child: ListView(
                children: [
                  for (var i = 0; i < 10; i++)
                    LimitedBox(
                      maxHeight: 100,
                      child: Container(
                        color: i.isEven ? Colors.blue : Colors.red,
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
