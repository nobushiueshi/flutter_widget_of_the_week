import 'package:flutter/material.dart';

class SamplePage053 extends StatelessWidget {
  const SamplePage053({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListTile'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return ListTile(
              leading: const CircleAvatar(
                child: Icon(Icons.person),
              ),
              title: const Text('Widget of the week'),
              subtitle: Text('#$index ...'),
              trailing: const Icon(Icons.drag_handle),
            );
          },
        ),
      ),
    );
  }
}
