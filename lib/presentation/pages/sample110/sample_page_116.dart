import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class SamplePage116 extends StatefulWidget {
  const SamplePage116({
    super.key,
  });

  @override
  State<SamplePage116> createState() => _SamplePage116State();
}

class _SamplePage116State extends State<SamplePage116> {
  @override
  void initState() {
    super.initState();

    GetIt.I.registerSingleton<SamplePage116Repository>(
      SamplePage116RepositoryImpl(),
    );
  }

  @override
  void dispose() {
    GetIt.I.unregister<SamplePage116Repository>();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final message = GetIt.I.get<SamplePage116Repository>().getMessage();
    return Scaffold(
      appBar: AppBar(
        title: const Text('get_it'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(message),
      ),
    );
  }
}

abstract class SamplePage116Repository {
  String getMessage() {
    throw UnimplementedError();
  }
}

class SamplePage116RepositoryImpl extends SamplePage116Repository {
  @override
  String getMessage() {
    return 'SamplePage116RepositoryImpl.getMessage';
  }
}
