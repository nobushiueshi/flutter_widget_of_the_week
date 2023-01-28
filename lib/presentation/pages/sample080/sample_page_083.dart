import 'dart:async';

import 'package:async/async.dart';
import 'package:flutter/material.dart';

class SamplePage083 extends StatefulWidget {
  const SamplePage083({
    super.key,
  });

  @override
  State<SamplePage083> createState() => _SamplePage083State();
}

class _SamplePage083State extends State<SamplePage083> {
  final stream1Controller = StreamController<int>();
  final stream2Controller = StreamController<int>();
  final stream3Controller = StreamController<int>();

  late final Stream<int> totalStream;

  final countCache = AsyncCache<int>(
    const Duration(seconds: 15),
  );

  @override
  void initState() {
    super.initState();
    totalStream = StreamGroup.merge(
      [
        stream1Controller.stream,
        stream2Controller.stream,
      ],
    );
    totalStream.listen((event) {
      debugPrint('totalStream : $event');
    });
  }

  @override
  void dispose() {
    stream1Controller.close();
    stream2Controller.close();
    stream3Controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('async'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            ListTile(
              title: const Text('StreamGroup : stream1Controller'),
              onTap: () async {
                stream1Controller.sink.add(1);
              },
            ),
            ListTile(
              title: const Text('StreamGroup : stream2Controller'),
              onTap: () async {
                stream2Controller.sink.add(2);
              },
            ),
            ListTile(
              title: const Text('AsyncCache'),
              onTap: () async {
                debugPrint('AsyncCache ${DateTime.now().toLocal()}');
                final count = await countCache.fetch(() async {
                  await Future<void>.delayed(const Duration(seconds: 5));
                  return 10;
                });
                debugPrint(
                  'count: $count  ${DateTime.now().toLocal()}',
                );
              },
            ),
            ListTile(
              title: const Text('StreamQueue'),
              onTap: () async {
                final stream1 = Stream.fromFuture(getData(2));
                final stream2 = Stream.fromFuture(getData(4));
                final stream3 = Stream.fromFuture(getData(6));
                final streams = StreamGroup.merge([
                  stream1,
                  stream2,
                  stream3,
                ]);
                final data = StreamQueue(streams);
                final first = await data.next;
                debugPrint(first);
                final second = await data.next;
                debugPrint(second);
                final third = await data.next;
                debugPrint(third);
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<String> getData(int duration) async {
    await Future<void>.delayed(Duration(seconds: duration)); //Mock delay
    return 'This a test data for duration $duration';
  }
}
