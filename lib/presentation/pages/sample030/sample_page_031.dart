import 'package:flutter/material.dart';

class SamplePage031 extends StatefulWidget {
  const SamplePage031({
    super.key,
  });

  @override
  State<SamplePage031> createState() => _SamplePage031State();
}

class _SamplePage031State extends State<SamplePage031> {
  Color _selectedColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Draggable'),
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
                  _SamplePage031Draggable(
                    color: Colors.blue,
                  ),
                  _SamplePage031Draggable(
                    color: Colors.yellow,
                  ),
                  _SamplePage031Draggable(
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
                    onWillAccept: (value) => value != _selectedColor,
                    onAccept: (value) {
                      setState(() {
                        _selectedColor = value;
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

class _SamplePage031Draggable extends StatelessWidget {
  const _SamplePage031Draggable({
    this.color,
  });

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Draggable<Color>(
      data: color,
      childWhenDragging: _SamplePage031Child(
        color: color,
        child: const Text('ドラッグ中'),
      ),
      feedback: _SamplePage031Child(
        color: color,
        child: const Icon(Icons.face),
      ),
      child: _SamplePage031Child(
        color: color,
        child: const Text('通常'),
      ),
    );
  }
}

class _SamplePage031Child extends StatelessWidget {
  const _SamplePage031Child({
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
