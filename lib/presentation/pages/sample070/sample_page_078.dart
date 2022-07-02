import 'package:flutter/material.dart';

class SamplePage078 extends StatelessWidget {
  const SamplePage078({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ClipOval'),
        centerTitle: true,
      ),
      body: ColoredBox(
        color: Colors.grey,
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipOval(
                  child: Image.asset(
                    'assets/genba_neko.png',
                    width: 128,
                    height: 128,
                  ),
                ),
                const SizedBox(height: 30),
                ClipOval(
                  clipper: _SamplePage078Clipper(),
                  child: Image.asset(
                    'assets/genba_neko.png',
                    width: 128,
                    height: 128,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _SamplePage078Clipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return const Rect.fromLTWH(0, 0, 100, 50);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    return false;
  }
}
