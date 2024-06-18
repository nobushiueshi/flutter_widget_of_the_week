import 'package:feedback/feedback.dart';
import 'package:flutter/material.dart';

class SamplePage156 extends StatefulWidget {
  const SamplePage156({
    super.key,
  });

  @override
  State<SamplePage156> createState() => _SamplePage156State();
}

class _SamplePage156State extends State<SamplePage156> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('feedback'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () async {
              BetterFeedback.of(context).show(
                (feedback) async {
                  // ここでスクリーンショットやメッセージを送信する.
                },
              );
            },
            icon: const Icon(
              Icons.feedback_outlined,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _counter++;
          });
        },
        child: const Icon(Icons.add_outlined),
      ),
    );
  }
}
