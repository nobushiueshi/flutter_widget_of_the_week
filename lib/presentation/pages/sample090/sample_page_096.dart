import 'package:flutter/material.dart';

class SamplePage096 extends StatelessWidget {
  const SamplePage096({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RotatedBox'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Row(
          children: [
            RotatedBox(
              quarterTurns: 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.all(20),
                    color: Colors.black,
                    child: Text(
                      'Rotation',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize:
                            Theme.of(context).textTheme.displaySmall!.fontSize,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Text('ABCDEFGHIJKLMNOPQRSTUVWXYZ' * 50),
              ),
            ),
            RotatedBox(
              quarterTurns: 3,
              child: Container(
                margin: const EdgeInsets.all(10),
                child: Row(
                  children: const [
                    Chip(
                      label: Text('Dash'),
                    ),
                    Chip(
                      label: Text('Flutter'),
                    ),
                    Chip(
                      label: Text('Tutorial'),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
