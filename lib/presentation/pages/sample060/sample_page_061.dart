import 'package:flutter/material.dart';

class SamplePage061 extends StatelessWidget {
  const SamplePage061({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ColorFiltered'),
        centerTitle: true,
      ),
      body: const SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ColorFiltered(
                colorFilter: ColorFilter.mode(
                  Colors.grey,
                  BlendMode.color,
                ),
                child: FlutterLogo(
                  size: 128,
                ),
              ),
              SizedBox(height: 20),
              FlutterLogo(
                size: 128,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
