import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SamplePage010 extends StatelessWidget {
  const SamplePage010({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Table'),
      ),
      body: SafeArea(
        child: Center(
          child: Table(
            border: TableBorder.all(),
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: const [
              TableRow(
                children: [
                  _SamplePage010WideWidget(),
                  _SamplePage010MediumWidget(),
                  _SamplePage010MediumWidget(),
                ],
              ),
              TableRow(
                children: [
                  _SamplePage010MediumWidget(),
                  _SamplePage010NarrowWidget(),
                  _SamplePage010MediumWidget(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SamplePage010WideWidget extends StatelessWidget {
  const _SamplePage010WideWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 200,
      color: Colors.blueAccent,
    );
  }
}

class _SamplePage010MediumWidget extends StatelessWidget {
  const _SamplePage010MediumWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: Colors.lightBlueAccent,
    );
  }
}

class _SamplePage010NarrowWidget extends StatelessWidget {
  const _SamplePage010NarrowWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 50,
      color: Colors.orangeAccent,
    );
  }
}
