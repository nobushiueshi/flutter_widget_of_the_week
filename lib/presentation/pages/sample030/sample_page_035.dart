import 'package:flutter/material.dart';

class SamplePage035 extends StatelessWidget {
  const SamplePage035({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Spacer'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Row(
                children: const [
                  _SamplePage035ColorBox(),
                  Spacer(),
                  _SamplePage035ColorBox(),
                  Spacer(),
                  _SamplePage035ColorBox(),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: const [
                  _SamplePage035ColorBox(),
                  Spacer(flex: 2),
                  _SamplePage035ColorBox(),
                  Spacer(),
                  _SamplePage035ColorBox(),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: const [
                  _SamplePage035ColorBox(),
                  Spacer(),
                  _SamplePage035ColorBox(),
                  Spacer(flex: 3),
                  _SamplePage035ColorBox(),
                  Spacer(flex: 9),
                  _SamplePage035ColorBox(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SamplePage035ColorBox extends StatelessWidget {
  const _SamplePage035ColorBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 64,
      height: 64,
    );
  }
}
