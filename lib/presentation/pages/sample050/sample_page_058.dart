import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SamplePage058 extends StatefulWidget {
  const SamplePage058({
    super.key,
  });

  @override
  State<SamplePage058> createState() => _SamplePage058State();
}

class _SamplePage058State extends State<SamplePage058> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AlertDialog'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () async {
                  await showDialog<bool>(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('タイトル'),
                        content: const Text('ここに内容'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop(false);
                            },
                            child: const Text('No'),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop(true);
                            },
                            child: const Text('Yes'),
                          ),
                        ],
                      );
                    },
                    barrierDismissible: false,
                  );
                },
                child: const Text('AlertDialog'),
              ),
              const SizedBox(height: 30),
              CupertinoButton(
                onPressed: () async {
                  await showCupertinoDialog<bool>(
                    context: context,
                    builder: (context) {
                      return CupertinoAlertDialog(
                        title: const Text('タイトル'),
                        content: const Text('ここに内容'),
                        actions: [
                          CupertinoDialogAction(
                            onPressed: () {
                              Navigator.of(context).pop(false);
                            },
                            child: const Text('No'),
                          ),
                          CupertinoDialogAction(
                            onPressed: () {
                              Navigator.of(context).pop(true);
                            },
                            child: const Text('Yes'),
                          ),
                        ],
                      );
                    },
                    barrierDismissible: false,
                  );
                },
                child: const Text('CupertinoAlertDialog'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
