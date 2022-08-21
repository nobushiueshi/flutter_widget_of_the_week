import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';

class SamplePage091 extends StatelessWidget {
  const SamplePage091({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('device_info_plus'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Platform.isIOS
            ? FutureBuilder<IosDeviceInfo>(
                future: DeviceInfoPlugin().iosInfo,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }

                  if (snapshot.hasError) {
                    return const Center(
                      child: Icon(
                        Icons.error,
                        color: Colors.red,
                      ),
                    );
                  }

                  final info = snapshot.data!;

                  return Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('model : ${info.model}'),
                        Text('systemVersion : ${info.systemVersion}'),
                        Text('utsname.machine : ${info.utsname.machine}'),
                      ],
                    ),
                  );
                },
              )
            : FutureBuilder<AndroidDeviceInfo>(
                future: DeviceInfoPlugin().androidInfo,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }

                  if (snapshot.hasError) {
                    return const Center(
                      child: Icon(
                        Icons.error,
                        color: Colors.red,
                      ),
                    );
                  }

                  final info = snapshot.data!;

                  return Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('device : ${info.device}'),
                        Text('systemVersion : ${info.version.release}'),
                        Text('manufacturer : ${info.manufacturer}'),
                      ],
                    ),
                  );
                },
              ),
      ),
    );
  }
}
