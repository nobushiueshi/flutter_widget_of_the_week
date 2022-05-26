import 'package:flutter/material.dart';

class SamplePage029 extends StatelessWidget {
  const SamplePage029({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dismissible'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('infinity指定だと画面サイズまで広げる'),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              SizedBox(
                width: 200,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('↑スペース作る'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
