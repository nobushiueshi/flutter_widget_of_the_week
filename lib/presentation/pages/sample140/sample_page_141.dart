import 'package:flutter/material.dart';

class SamplePage141 extends StatefulWidget {
  const SamplePage141({
    super.key,
  });

  @override
  State<SamplePage141> createState() => _SamplePage141State();
}

class _SamplePage141State extends State<SamplePage141> {
  Offset? dragGesturePosition;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RawMagnifier'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Stack(
            children: [
              GestureDetector(
                onPanUpdate: (details) {
                  setState(() {
                    dragGesturePosition = details.localPosition;
                  });
                },
                onPanEnd: (details) {
                  setState(() {
                    dragGesturePosition = null;
                  });
                },
                child: const FlutterLogo(
                  size: 256,
                ),
              ),
              if (dragGesturePosition != null)
                Positioned(
                  left: dragGesturePosition!.dx,
                  top: dragGesturePosition!.dy,
                  child: const RawMagnifier(
                    decoration: MagnifierDecoration(
                      shape: StarBorder(
                        side: BorderSide(
                          color: Colors.pink,
                          width: 3,
                        ),
                      ),
                    ),
                    magnificationScale: 2,
                    size: Size(128, 128),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
