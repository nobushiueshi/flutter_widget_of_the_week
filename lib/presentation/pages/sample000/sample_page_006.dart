import 'package:flutter/material.dart';

class SamplePage006 extends StatefulWidget {
  const SamplePage006({
    super.key,
  });

  @override
  SamplePage006State createState() => SamplePage006State();
}

class SamplePage006State extends State<SamplePage006> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FutureBuilder'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('FutureBuilder Success'),
              FutureBuilder(
                future: _successFuture(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    if (snapshot.hasError) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.info,
                            color: Colors.red,
                          ),
                          Text(snapshot.error?.toString() ?? ''),
                        ],
                      );
                    }
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.check_circle,
                          color: Colors.green,
                        ),
                        Text(snapshot.data?.toString() ?? ''),
                      ],
                    );
                  } else {
                    return const CircularProgressIndicator();
                  }
                },
              ),
              const SizedBox(height: 20),
              const Text('FutureBuilder Error'),
              FutureBuilder(
                future: _failureFuture(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    if (snapshot.hasError) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.info,
                            color: Colors.red,
                          ),
                          Text(snapshot.error?.toString() ?? ''),
                        ],
                      );
                    }
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.check_circle,
                          color: Colors.green,
                        ),
                        Text(snapshot.data?.toString() ?? ''),
                      ],
                    );
                  } else {
                    return const CircularProgressIndicator();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<String> _successFuture() async {
    await Future.delayed(const Duration(seconds: 2), () {});
    return 'Success!!';
  }

  Future<String> _failureFuture() async {
    await Future.delayed(const Duration(seconds: 2), () {});
    try {
      throw Exception('Error');
    } on Exception catch (e) {
      return Future.error(e);
    }
  }
}
