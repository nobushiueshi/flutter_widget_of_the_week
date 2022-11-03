import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SamplePage133 extends StatefulWidget {
  const SamplePage133({
    super.key,
  });

  @override
  State<SamplePage133> createState() => _SamplePage133State();
}

class _SamplePage133State extends State<SamplePage133> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shortcuts'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: const [
              Shortcuts(
                shortcuts: {
                  SingleActivator(LogicalKeyboardKey.keyA):
                      ButtonActivateIntent(),
                },
                child: ExpansionTile(
                  title: Text('Section 1'),
                  children: [
                    Text('Text text text text text text text'),
                    Text('text text text text text text text'),
                  ],
                ),
              ),
              Shortcuts(
                shortcuts: {
                  SingleActivator(LogicalKeyboardKey.keyB):
                      ButtonActivateIntent(),
                },
                child: ExpansionTile(
                  title: Text('Section 2'),
                  children: [
                    Text('Text text text text text text text'),
                    Text('text text text text text text text'),
                  ],
                ),
              ),
              Shortcuts(
                shortcuts: {
                  SingleActivator(LogicalKeyboardKey.keyC):
                      ButtonActivateIntent(),
                },
                child: ExpansionTile(
                  title: Text('Section 3'),
                  children: [
                    Text('Text text text text text text text'),
                    Text('text text text text text text text'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
