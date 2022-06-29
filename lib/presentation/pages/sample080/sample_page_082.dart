import 'package:flutter/material.dart';

class SamplePage082 extends StatelessWidget {
  const SamplePage082({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AboutDialog'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              showAboutDialog(
                context: context,
                applicationName: 'Flutter Widget of the Week',
                applicationVersion: '1.0.0',
                applicationIcon: const FlutterLogo(
                  size: 32,
                ),
                applicationLegalese: '適当な文章',
              );
            },
            child: const Text('AboutDialog'),
          ),
        ),
      ),
    );
  }
}
