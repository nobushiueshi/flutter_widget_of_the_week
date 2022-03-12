import 'package:flutter/material.dart';

class SamplePage031 extends StatefulWidget {
  const SamplePage031({
    Key? key,
  }) : super(key: key);

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
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: double.infinity,
              height: 120,
              color: Colors.grey[100],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
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
              child: Container(
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
                          border: Border.all(color: Colors.black),
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
    Key? key,
    this.color,
  }) : super(key: key);

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
    Key? key,
    this.color,
    this.child,
  }) : super(key: key);

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
