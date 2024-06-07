// import 'dart:io';

import 'package:flutter/material.dart';
// import 'package:mason/mason.dart';

class SamplePage126 extends StatefulWidget {
  const SamplePage126({
    super.key,
  });

  @override
  State<SamplePage126> createState() => _SamplePage126State();
}

class _SamplePage126State extends State<SamplePage126> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('mason'),
        centerTitle: true,
      ),
      body: const SafeArea(
        child: Center(
          child: Text('mason'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // 動かないので注意.
          // final brick = Brick.git(
          //   const GitPath(
          //     'https://github.com/felangel/mason',
          //     path: 'bricks/greeting',
          //   ),
          // );
          // final generator = await MasonGenerator.fromBrick(brick);
          // final target = DirectoryGeneratorTarget(Directory.current);
          // await generator
          //     .generate(target, vars: <String, dynamic>{'name': 'Dash'});
        },
        child: const Icon(Icons.download),
      ),
    );
  }
}
