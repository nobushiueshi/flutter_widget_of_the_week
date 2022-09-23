import 'package:flutter/material.dart';

class SamplePage109 extends StatefulWidget {
  const SamplePage109({
    super.key,
  });

  @override
  State<SamplePage109> createState() => _SamplePage109State();
}

class _SamplePage109State extends State<SamplePage109>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
      duration: const Duration(milliseconds: 250),
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flow'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Flow(
          delegate: _SamplePage109Delegate(animationController),
          children: [
            FloatingActionButton(
              heroTag: 'menu',
              onPressed: () {
                animationController.status == AnimationStatus.completed
                    ? animationController.reverse()
                    : animationController.forward();
              },
              child: const Icon(Icons.menu),
            ),
            FloatingActionButton(
              heroTag: 'add',
              onPressed: () {},
              child: const Icon(Icons.add),
            ),
            FloatingActionButton(
              heroTag: 'remove',
              onPressed: () {},
              child: const Icon(Icons.remove),
            ),
          ],
        ),
      ),
    );
  }
}

class _SamplePage109Delegate extends FlowDelegate {
  _SamplePage109Delegate(this.animation) : super(repaint: animation);

  final Animation<double> animation;

  @override
  void paintChildren(FlowPaintingContext context) {
    for (var i = context.childCount - 1; i >= 0; i--) {
      final offset = i * animation.value * 50;
      context.paintChild(
        i,
        transform: Matrix4.translationValues(
          offset,
          offset,
          0,
        ),
      );
    }
  }

  @override
  bool shouldRepaint(covariant _SamplePage109Delegate oldDelegate) {
    return animation != oldDelegate.animation;
  }
}
