import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SamplePage108 extends StatelessWidget {
  const SamplePage108({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('font_awesome_flutter'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              FaIcon(FontAwesomeIcons.google),
              SizedBox(height: 20),
              FaIcon(FontAwesomeIcons.apple),
              SizedBox(height: 20),
              FaIcon(FontAwesomeIcons.meta),
              SizedBox(height: 20),
              FaIcon(FontAwesomeIcons.amazon),
              SizedBox(height: 20),
              FaIcon(FontAwesomeIcons.microsoft),
            ],
          ),
        ),
      ),
    );
  }
}
