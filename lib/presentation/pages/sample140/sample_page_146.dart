import 'package:flutter/material.dart';

class SamplePage146 extends StatefulWidget {
  const SamplePage146({
    super.key,
  });

  @override
  State<SamplePage146> createState() => _SamplePage146State();
}

class _SamplePage146State extends State<SamplePage146> {
  Color _selectedColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Draggable(Take 2)'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 120,
              color: Colors.grey[100],
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _SamplePage146Draggable(
                    color: Colors.blue,
                  ),
                  _SamplePage146Draggable(
                    color: Colors.yellow,
                  ),
                  _SamplePage146Draggable(
                    color: Colors.red,
                  ),
                ],
              ),
            ),
            Expanded(
              child: ColoredBox(
                color: _selectedColor,
                child: Center(
                  child: DragTarget<Color>(
                    onWillAcceptWithDetails: (value) =>
                        value.data != _selectedColor,
                    onAcceptWithDetails: (value) {
                      setState(() {
                        _selectedColor = value.data;
                      });
                    },
                    builder: (context, candidates, rejects) {
                      return Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          color: Colors.white,
                        ),
                        child: const Center(
                          child: Text('ここに\nドラッグ'),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SamplePage146Draggable extends StatelessWidget {
  const _SamplePage146Draggable({
    this.color,
  });

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Draggable<Color>(
      data: color,
      childWhenDragging: _SamplePage146Child(
        color: color,
        child: const Text('ドラッグ中'),
      ),
      feedback: _SamplePage146Child(
        color: color,
        child: const Icon(Icons.face),
      ),
      child: _SamplePage146Child(
        color: color,
        child: const Text('通常'),
      ),
    );
  }
}

class _SamplePage146Child extends StatelessWidget {
  const _SamplePage146Child({
    this.color,
    this.child,
  });

  final Color? color;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: color,
      child: Center(child: child),
    );
  }
}
