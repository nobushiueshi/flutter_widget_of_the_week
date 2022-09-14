import 'package:flutter/material.dart';

class SamplePage105 extends StatefulWidget {
  const SamplePage105({
    super.key,
  });

  @override
  State<SamplePage105> createState() => _SamplePage105State();
}

class _SamplePage105State extends State<SamplePage105> {
  bool enabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HeroMode'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: GestureDetector(
            child: HeroMode(
              enabled: enabled,
              child: Hero(
                tag: 'sample105',
                child: Image.asset(
                  'assets/genba_neko.png',
                  width: 128,
                  height: 128,
                ),
              ),
            ),
            onTap: () {
              Navigator.of(context).push<void>(
                MaterialPageRoute(
                  builder: (context) {
                    return const _SamplePage105Sub();
                  },
                ),
              );
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            enabled = !enabled;
          });
        },
        child: enabled
            ? const Icon(Icons.check_box)
            : const Icon(Icons.check_box_outline_blank),
      ),
    );
  }
}

class _SamplePage105Sub extends StatelessWidget {
  const _SamplePage105Sub();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HeroMode Sub'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Hero(
            tag: 'sample105',
            child: Image.asset(
              'assets/genba_neko.png',
            ),
          ),
        ),
      ),
    );
  }
}
