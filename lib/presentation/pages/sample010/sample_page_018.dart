import 'package:flutter/material.dart';

class SamplePage018 extends StatelessWidget {
  const SamplePage018({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CustomPaint'),
      ),
      body: SafeArea(
        child: CustomPaint(
          painter: _SamplePage018CustomPainter(),
          child: const Center(
            child: Text(
              'Once upon a time...',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _SamplePage018CustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 5;
    canvas.drawLine(const Offset(10, 10), const Offset(10, 60), paint);

    paint.color = Colors.orange;
    canvas.drawRect(const Rect.fromLTWH(20, 10, 50, 50), paint);

    paint.color = Colors.red;
    canvas.drawCircle(const Offset(105, 35), 25, paint);
  }

  @override
  bool shouldRepaint(_SamplePage018CustomPainter oldDelegate) {
    return true;
  }
}
