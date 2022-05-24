import 'package:flutter/material.dart';

class SamplePage065 extends StatelessWidget {
  const SamplePage065({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/genba_neko.png',
                height: 128,
              ),
              const SizedBox(height: 20),
              Image.network(
                'https://www.google.com/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png',
                width: 128,
                loadingBuilder: (context, child, progress) {
                  return progress == null
                      ? child
                      : const CircularProgressIndicator();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
