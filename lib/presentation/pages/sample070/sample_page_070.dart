import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SamplePage070 extends StatelessWidget {
  const SamplePage070({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ShaderMask'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: ShaderMask(
                shaderCallback: (bounds) => const RadialGradient(
                  colors: [
                    Colors.yellow,
                    Colors.deepOrange,
                  ],
                  tileMode: TileMode.mirror,
                ).createShader(bounds),
                child: Text(
                  'Burning Text!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: Theme.of(context).textTheme.headline4!.fontSize,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Center(
              child: FutureBuilder<ui.Image>(
                future: _loadImage(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator();
                  }
                  final image = snapshot.data!;
                  return ShaderMask(
                    blendMode: ui.BlendMode.overlay,
                    shaderCallback: (bounds) => ImageShader(
                      image,
                      TileMode.mirror,
                      TileMode.mirror,
                      Matrix4.identity().storage,
                    ),
                    child: const Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 128,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<ui.Image> _loadImage() async {
    final imageBytes = await rootBundle.load('assets/sample.png');
    return decodeImageFromList(imageBytes.buffer.asUint8List());
  }
}
