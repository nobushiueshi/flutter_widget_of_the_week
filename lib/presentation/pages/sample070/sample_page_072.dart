import 'package:flutter/material.dart';

class SamplePage072 extends StatelessWidget {
  const SamplePage072({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Builder'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Flutter 3.3.0より使えなくなった.
                  // Scaffold.of(context).showSnackBar(
                  //   const SnackBar(
                  //     content: Text('通知されない'),
                  //   ),
                  // );
                  debugPrint(Scaffold.of(context).hasAppBar.toString());
                },
                child: const Text('エラーが発生するボタン'),
              ),
              const SizedBox(height: 30),
              Builder(
                builder: (context) {
                  return ElevatedButton(
                    onPressed: () async {
                      // Flutter 3.3.0より使えなくなった.
                      // Scaffold.of(context).showSnackBar(
                      //   const SnackBar(
                      //     content: Text('通知される'),
                      //   ),
                      // );
                      debugPrint(Scaffold.of(context).hasAppBar.toString());
                    },
                    child: const Text('普通のボタン'),
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
