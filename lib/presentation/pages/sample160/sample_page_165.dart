import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SamplePage165 extends StatelessWidget {
  const SamplePage165({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Uint8List'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: FutureBuilder(
            future: _loadAsset('assets/sample.png'),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator();
              } else if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              }

              return Image.memory(snapshot.data!);
            },
          ),
        ),
      ),
    );
  }

  Future<Uint8List> _loadAsset(String path) async {
    final data = await rootBundle.load(path);
    return data.buffer.asUint8List();
  }
}
