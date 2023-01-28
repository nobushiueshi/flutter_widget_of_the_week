import 'package:flutter/material.dart';

class SamplePage102 extends StatelessWidget {
  const SamplePage102({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MouseRegion'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: MouseRegion(
            cursor: SystemMouseCursors.text,
            child: Container(
              width: 128,
              height: 128,
              color: Colors.blue,
            ),
            onEnter: (event) {
              debugPrint('onEnter $event');
            },
            onHover: (event) {
              debugPrint('onHover $event');
            },
            onExit: (event) {
              debugPrint('onExit $event');
            },
          ),
        ),
      ),
    );
  }
}
