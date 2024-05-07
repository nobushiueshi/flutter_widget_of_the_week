import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class SamplePage099 extends StatefulWidget {
  const SamplePage099({
    super.key,
  });

  @override
  State<SamplePage099> createState() => _SamplePage099State();
}

class _SamplePage099State extends State<SamplePage099> {
  late final StreamSubscription<List<ConnectivityResult>> subscription;
  final streamController = StreamController<ConnectivityResult>();
  Stream<ConnectivityResult> get stream => streamController.stream;

  @override
  void initState() {
    super.initState();
    subscription = Connectivity().onConnectivityChanged.listen((result) {
      for (final r in result) {
        streamController.sink.add(r);
        debugPrint(r.toString());
      }
    });
  }

  @override
  void dispose() {
    streamController.close();
    subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('connectivity_plus'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: StreamBuilder(
            stream: stream,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (snapshot.hasError || !snapshot.hasData) {
                return const Center(
                  child: Icon(
                    Icons.error,
                    color: Colors.red,
                  ),
                );
              }
              return Text(snapshot.data!.toString());
            },
          ),
        ),
      ),
    );
  }
}
