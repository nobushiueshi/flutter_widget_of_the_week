import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class SamplePage115 extends StatefulWidget {
  const SamplePage115({
    super.key,
  });

  @override
  State<SamplePage115> createState() => _SamplePage115State();
}

class _SamplePage115State extends State<SamplePage115> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('path_provider'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('getApplicationDocumentsDirectory'),
            FutureBuilder(
              future: getApplicationDocumentsDirectory(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                }
                if (snapshot.hasError) {
                  return const Icon(
                    Icons.error,
                    color: Colors.red,
                  );
                }
                return Text(snapshot.data!.path);
              },
            ),
            const SizedBox(height: 20),
            const Text('getApplicationSupportDirectory'),
            FutureBuilder(
              future: getApplicationSupportDirectory(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                }
                if (snapshot.hasError) {
                  return const Icon(
                    Icons.error,
                    color: Colors.red,
                  );
                }
                return Text(snapshot.data!.path);
              },
            ),
          ],
        ),
      ),
    );
  }
}
