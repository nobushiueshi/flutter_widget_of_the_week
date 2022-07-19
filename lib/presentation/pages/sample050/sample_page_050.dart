import 'package:flutter/material.dart';

class SamplePage050 extends StatefulWidget {
  const SamplePage050({
    super.key,
  });

  @override
  State<SamplePage050> createState() => _SamplePage050State();
}

class _SamplePage050State extends State<SamplePage050> {
  bool _enable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedOpacity'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: AnimatedOpacity(
          opacity: _enable ? 1.0 : 0,
          duration: const Duration(seconds: 1),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const FlutterLogo(
                  size: 256,
                ),
                const SizedBox(height: 20),
                Text(
                  'Hello!',
                  style: TextStyle(
                    color: Colors.blue[900],
                    fontSize: Theme.of(context).textTheme.headline2!.fontSize,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _enable = !_enable;
          });
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
