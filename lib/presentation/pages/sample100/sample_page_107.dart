import 'package:flutter/material.dart';

class SamplePage107 extends StatefulWidget {
  const SamplePage107({
    super.key,
  });

  @override
  State<SamplePage107> createState() => _SamplePage107State();
}

class _SamplePage107State extends State<SamplePage107> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RefreshIndicator'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () async {
            await Future<void>.delayed(const Duration(seconds: 2));
          },
          child: ListView.builder(
            itemCount: 30,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('index : $index'),
              );
            },
          ),
        ),
      ),
    );
  }
}
