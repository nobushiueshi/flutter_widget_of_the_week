import 'package:flutter/material.dart';

class SamplePage016 extends StatelessWidget {
  const SamplePage016({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ClipRRect'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('ClipRRect'),
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: _SamplePage016ChildWidget(),
              ),
              const SizedBox(height: 20),
              const Text('ClipOval'),
              ClipOval(
                child: _SamplePage016ChildWidget(),
              ),
              const SizedBox(height: 20),
              const Text('ClipPath'),
              ClipPath(
                clipper: _SamplePage016CustomClipperPath(),
                child: _SamplePage016ChildWidget(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _SamplePage016ChildWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 128,
      color: Colors.blue,
      child: const Center(
        child: FlutterLogo(
          size: 100,
        ),
      ),
    );
  }
}

class _SamplePage016CustomClipperPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..moveTo(size.width / 2, 0)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
