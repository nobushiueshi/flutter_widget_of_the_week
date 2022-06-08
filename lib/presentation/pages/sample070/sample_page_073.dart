import 'package:flutter/material.dart';

class SamplePage073 extends StatefulWidget {
  const SamplePage073({
    super.key,
  });

  @override
  State<SamplePage073> createState() => _SamplePage073State();
}

class _SamplePage073State extends State<SamplePage073> {
  var _enableClip = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ClipPath'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: ClipPath(
            clipper: _enableClip ? _SamplePage073Clipper() : null,
            child: Container(
              width: 128,
              height: 128,
              color: Colors.blue,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _enableClip = !_enableClip;
          });
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}

class _SamplePage073Clipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final controlPoint1 = Offset(50, size.height - 100);
    final controlPoint2 = Offset(size.width - 50, size.height);
    final endPoint = Offset(size.width, size.height - 50);

    final path = Path()
      ..moveTo(size.width / 2, 0)
      ..lineTo(0, size.height - 50)
      ..cubicTo(
        controlPoint1.dx,
        controlPoint1.dy,
        controlPoint2.dx,
        controlPoint2.dy,
        endPoint.dx,
        endPoint.dy,
      )
      ..close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
