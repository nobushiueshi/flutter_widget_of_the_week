import 'package:flutter/material.dart';

class SamplePage154 extends StatefulWidget {
  const SamplePage154({
    super.key,
  });

  @override
  State<SamplePage154> createState() => _SamplePage154State();
}

class _SamplePage154State extends State<SamplePage154> {
  final _controller = OverlayPortalController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OverlayPortal'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                onPressed: _controller.toggle,
                child: OverlayPortal(
                  controller: _controller,
                  overlayChildBuilder: (context) {
                    return const Positioned(
                      top: 200,
                      right: 200,
                      child: Text("I'm an overlay!"),
                    );
                  },
                  child: const Text('Press Me!'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
