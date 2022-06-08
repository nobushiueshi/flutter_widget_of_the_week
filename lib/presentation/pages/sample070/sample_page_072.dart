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
                  // ignore: deprecated_member_use
                  Scaffold.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('通知されない'),
                    ),
                  );
                },
                child: const Text('エラーが発生するボタン'),
              ),
              const SizedBox(height: 30),
              Builder(
                builder: (context) {
                  return ElevatedButton(
                    onPressed: () async {
                      // ignore: deprecated_member_use
                      Scaffold.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('通知される'),
                        ),
                      );
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
