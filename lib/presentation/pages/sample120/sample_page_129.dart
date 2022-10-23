import 'dart:math';

import 'package:flutter/material.dart';

class SamplePage129 extends StatefulWidget {
  const SamplePage129({
    super.key,
  });

  @override
  State<SamplePage129> createState() => _SamplePage129State();
}

class _SamplePage129State extends State<SamplePage129> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            title: Text('LinearGradient'),
            centerTitle: true,
            stretch: true,
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              background: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff027DFD),
                      Color(0xff4100E0),
                      Color(0xff1CDAC5),
                      Color(0xffF2DD22),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                ShaderMask(
                  shaderCallback: (bounds) => const LinearGradient(
                    colors: [
                      Color(0xff027DFD),
                      Color(0xff4100E0),
                      Color(0xff1CDAC5),
                      Color(0xffF2DD22),
                    ],
                    stops: [0.1, 0.20, 0.50, 0.75],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    transform: GradientRotation(pi / 4),
                  ).createShader(bounds),
                  child: const SizedBox(
                    child: Center(
                      child: Text(
                        'Hello Flutter World!',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
