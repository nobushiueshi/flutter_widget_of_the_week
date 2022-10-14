import 'package:flutter/material.dart';

class SamplePage068 extends StatefulWidget {
  const SamplePage068({
    super.key,
  });

  @override
  State<SamplePage068> createState() => _SamplePage068State();
}

class _SamplePage068State extends State<SamplePage068> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SnackBar'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Builder(
            builder: (context) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // このやり方は古い. Flutter 3.3.0以降使えなくなった.
                      // Scaffold.of(context).showSnackBar(
                      //   const SnackBar(
                      //     content: Text('Hello World!'),
                      //   ),
                      // );
                      showDialog<void>(
                        context: context,
                        builder: (context) {
                          return const AlertDialog(
                            title: Text('Flutter 3.3.0以降使えなくなった'),
                          );
                        },
                      );
                    },
                    child: const Text('古いやり方でSnackBarを表示'),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // このやり方が新しい.
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Hello World!'),
                        ),
                      );
                    },
                    child: const Text('新しいSnackBarを表示'),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
