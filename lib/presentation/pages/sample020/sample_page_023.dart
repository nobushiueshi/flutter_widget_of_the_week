import 'dart:math';

import 'package:flutter/material.dart';

class SamplePage023 extends StatefulWidget {
  const SamplePage023({
    Key? key,
  }) : super(key: key);

  @override
  _SamplePage023State createState() => _SamplePage023State();
}

class _SamplePage023State extends State<SamplePage023> {
  var _offset = Offset.zero;

  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.identity()
        ..setEntry(3, 2, 0.001)
        ..rotateX(0.01 * _offset.dy)
        ..rotateY(-0.01 * _offset.dx),
      alignment: FractionalOffset.center,
      child: GestureDetector(
        onPanUpdate: (details) => setState(() => _offset += details.delta / 2),
        onDoubleTap: () => setState(() => _offset = Offset.zero),
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Transform'),
          ),
          body: SafeArea(
            child: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text('回転'),
                      Transform.rotate(
                        angle: pi / 4,
                        child: const _SamplePage023Icon(),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text('拡大'),
                      Transform.scale(
                        scale: 1.5,
                        child: const _SamplePage023Icon(),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text('移動'),
                      Transform.translate(
                        offset: const Offset(50, 50),
                        child: const _SamplePage023Icon(),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text('斜め'),
                      Transform(
                        transform: Matrix4.skewX(-0.3),
                        child: const _SamplePage023Icon(),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text('透視図法'),
                      Transform(
                        transform: Matrix4.identity()
                          ..setEntry(3, 2, 0.01)
                          ..rotateX(0.6),
                        alignment: FractionalOffset.center,
                        child: const _SamplePage023Icon(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _SamplePage023Icon extends StatelessWidget {
  const _SamplePage023Icon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 64,
      height: 64,
      color: Colors.blue,
      child: const Icon(
        Icons.catching_pokemon,
        color: Colors.white,
      ),
    );
  }
}
