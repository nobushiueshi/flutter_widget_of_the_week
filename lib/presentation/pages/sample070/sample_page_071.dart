import 'package:flutter/material.dart';

class SamplePage071 extends StatelessWidget {
  const SamplePage071({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NotificationListener'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: NotificationListener<ScrollNotification>(
          onNotification: (notification) {
            debugPrint(notification.toString());
            return true;
          },
          child: ListView(
            children: List.generate(
              20,
              (index) => ListTile(
                title: Text('index : $index'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
