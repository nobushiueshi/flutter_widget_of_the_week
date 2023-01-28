import 'package:flutter/material.dart';

class SamplePage125 extends StatefulWidget {
  const SamplePage125({
    super.key,
  });

  @override
  State<SamplePage125> createState() => _SamplePage125State();
}

class _SamplePage125State extends State<SamplePage125> {
  String message = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FocusableActionDetector'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                message,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  setState(() {
                    message = 'onTap';
                  });
                },
                child: FocusableActionDetector(
                  child: const Icon(
                    Icons.flutter_dash,
                    color: Colors.blue,
                    size: 128,
                  ),
                  onFocusChange: (value) {
                    setState(() {
                      message = 'onFocusChange($value)';
                    });
                  },
                  onShowFocusHighlight: (value) {
                    setState(() {
                      message = 'onShowFocusHighlight($value)';
                    });
                  },
                  onShowHoverHighlight: (value) {
                    setState(() {
                      message = 'onShowHoverHighlight($value)';
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
