import 'dart:ui';

import 'package:flutter/material.dart';

class SamplePage092 extends StatelessWidget {
  const SamplePage092({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ImageFiltered'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            _SamplePage092Child(),
            ImageFiltered(
              imageFilter: ImageFilter.blur(
                sigmaX: 2,
                sigmaY: 2,
              ),
              child: _SamplePage092Child(),
            ),
            ImageFiltered(
              imageFilter: ImageFilter.dilate(
                radiusX: 0.2,
                radiusY: 0.2,
              ),
              child: _SamplePage092Child(),
            ),
            ImageFiltered(
              imageFilter: ImageFilter.erode(
                radiusX: 0.2,
                radiusY: 0.2,
              ),
              child: _SamplePage092Child(),
            ),
            ImageFiltered(
              imageFilter: ImageFilter.matrix(
                Matrix4.rotationZ(0.2).storage,
              ),
              child: _SamplePage092Child(),
            ),
            const SizedBox(height: 64),
            ImageFiltered(
              imageFilter: ImageFilter.compose(
                inner: ImageFilter.dilate(
                  radiusX: 0.3,
                  radiusY: 0.3,
                ),
                outer: ImageFilter.erode(
                  radiusX: 0.3,
                  radiusY: 0.3,
                ),
              ),
              child: _SamplePage092Child(),
            ),
          ],
        ),
      ),
    );
  }
}

class _SamplePage092Child extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/genba_neko.png',
      width: 128,
      height: 128,
    );
  }
}
