import 'package:flutter/material.dart';

class SamplePage035 extends StatelessWidget {
  const SamplePage035({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Spacer'),
        centerTitle: true,
      ),
      body: const SafeArea(
        child: Center(
          child: Column(
            children: [
              Row(
                children: [
                  _SamplePage035ColorBox(),
                  Spacer(),
                  _SamplePage035ColorBox(),
                  Spacer(),
                  _SamplePage035ColorBox(),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  _SamplePage035ColorBox(),
                  Spacer(flex: 2),
                  _SamplePage035ColorBox(),
                  Spacer(),
                  _SamplePage035ColorBox(),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
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
  const _SamplePage035ColorBox();

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 64,
      height: 64,
    );
  }
}
