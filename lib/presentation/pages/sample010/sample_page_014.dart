import 'package:flutter/material.dart';

class SamplePage014 extends StatefulWidget {
  const SamplePage014({
    Key? key,
  }) : super(key: key);

  @override
  _SamplePage014State createState() => _SamplePage014State();
}

class _SamplePage014State extends State<SamplePage014> {
  final Stream<String> _successStream = (() async* {
    await Future<void>.delayed(const Duration(seconds: 1));
    yield 'Success';
    await Future<void>.delayed(const Duration(seconds: 1));
  })();

  final Stream<String> _errorStream = (() async* {
    await Future<void>.delayed(const Duration(seconds: 1));
    throw Exception('Error');
    yield 'Success';
    await Future<void>.delayed(const Duration(seconds: 1));
  })();

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('#14 SteamBuilder'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('StreamBuilder Success'),
              StreamBuilder<String>(
                stream: _successStream,
                builder: (context, snapshot) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _samplePage014StreamWidget(snapshot),
                      _samplePage014StreamStateWidget(snapshot),
                    ],
                  );
                },
              ),
              const SizedBox(height: 20),
              const Text('StreamBuilder Error'),
              StreamBuilder<String>(
                stream: _errorStream,
                builder: (context, snapshot) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _samplePage014StreamWidget(snapshot),
                      _samplePage014StreamStateWidget(snapshot),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _samplePage014StreamWidget(AsyncSnapshot<String> snapshot) {
    if (snapshot.hasError) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.error,
            color: Colors.red,
          ),
          Text(snapshot.error?.toString() ?? ''),
        ],
      );
    }
    if (!snapshot.hasData) {
      return const CircularProgressIndicator();
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.check_circle,
          color: Colors.green,
        ),
        Text(snapshot.data ?? ''),
      ],
    );
  }

  Widget _samplePage014StreamStateWidget(AsyncSnapshot<String> snapshot) {
    var text = '';
    switch (snapshot.connectionState) {
      case ConnectionState.waiting:
        text = 'waiting';
        break;
      case ConnectionState.none:
        text = 'none';
        break;
      case ConnectionState.active:
        text = 'active';
        break;
      case ConnectionState.done:
        text = 'done';
        break;
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.info,
          color: Colors.blue,
        ),
        Text('status : $text'),
      ],
    );
  }
}
