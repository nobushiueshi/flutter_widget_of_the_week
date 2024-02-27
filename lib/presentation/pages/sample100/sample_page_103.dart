import 'package:flutter/material.dart';
import 'package:sensors_plus/sensors_plus.dart';

class SamplePage103 extends StatefulWidget {
  const SamplePage103({
    super.key,
  });

  @override
  State<SamplePage103> createState() => _SamplePage103State();
}

class _SamplePage103State extends State<SamplePage103> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('sensors_plus'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              StreamBuilder(
                stream: accelerometerEventStream(),
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
                  final event = snapshot.data!;
                  return Column(
                    children: [
                      const Text('accelerometerEvents'),
                      Text('x:${event.x}'),
                      Text('y:${event.y}'),
                      Text('z:${event.z}'),
                    ],
                  );
                },
              ),
              const SizedBox(height: 20),
              StreamBuilder(
                stream: userAccelerometerEventStream(),
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
                  final event = snapshot.data!;
                  return Column(
                    children: [
                      const Text('userAccelerometerEvents'),
                      Text('x:${event.x}'),
                      Text('y:${event.y}'),
                      Text('z:${event.z}'),
                    ],
                  );
                },
              ),
              const SizedBox(height: 20),
              StreamBuilder(
                stream: gyroscopeEventStream(),
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
                  final event = snapshot.data!;
                  return Column(
                    children: [
                      const Text('gyroscopeEvents'),
                      Text('x:${event.x}'),
                      Text('y:${event.y}'),
                      Text('z:${event.z}'),
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
}
