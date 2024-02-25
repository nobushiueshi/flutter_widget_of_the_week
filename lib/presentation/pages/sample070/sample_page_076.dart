import 'package:flutter/material.dart';

class SamplePage076 extends StatefulWidget {
  const SamplePage076({
    super.key,
  });

  @override
  State<SamplePage076> createState() => _SamplePage076State();
}

class _SamplePage076State extends State<SamplePage076> {
  bool _ignore = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IgnorePointer'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IgnorePointer(
                ignoring: _ignore,
                child: ElevatedButton(
                  onPressed: () {},
                  child: _ignore ? const Text('押せない') : const Text('押せる'),
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {},
                child: const Text('押せる'),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _ignore = !_ignore;
          });
        },
        child: _ignore
            ? const Icon(Icons.check_box_outline_blank)
            : const Icon(Icons.check_box),
      ),
    );
  }
}
