import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SamplePage077 extends StatefulWidget {
  const SamplePage077({
    super.key,
  });

  @override
  State<SamplePage077> createState() => _SamplePage077State();
}

class _SamplePage077State extends State<SamplePage077> {
  late final Future<String> _future;

  @override
  void initState() {
    super.initState();
    _future = _loading();
  }

  Future<String> _loading() async {
    await Future<void>.delayed(
      const Duration(seconds: 3),
    );

    return 'Complete';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CupertinoActivityIndicator'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: FutureBuilder<String>(
            future: _future,
            builder: (context, snapshot) {
              if (snapshot.connectionState != ConnectionState.done) {
                return const CupertinoActivityIndicator();
              }

              if (snapshot.hasError) {
                return const Icon(
                  Icons.error,
                  color: Colors.red,
                );
              }

              return Text(snapshot.data ?? '');
            },
          ),
        ),
      ),
    );
  }
}
