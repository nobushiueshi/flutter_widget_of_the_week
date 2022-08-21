import 'package:flutter/material.dart';

class SamplePage093 extends StatelessWidget {
  const SamplePage093({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PhysicalModel'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              PhysicalModel(
                color: Colors.black,
                elevation: 20,
                child: Container(
                  color: Colors.blue,
                  width: 128,
                  height: 128,
                ),
              ),
              const SizedBox(height: 64),
              const PhysicalModel(
                color: Colors.red,
                shadowColor: Colors.red,
                shape: BoxShape.circle,
                elevation: 10,
                child: FlutterLogo(
                  size: 128,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
