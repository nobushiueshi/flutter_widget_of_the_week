import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SamplePage123 extends StatelessWidget {
  const SamplePage123({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('google_fonts'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Dash is awesome!',
                style: GoogleFonts.lobster(),
              ),
              const SizedBox(height: 20),
              Text(
                'Dash is awesome!',
                style: GoogleFonts.lobster(
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Dash is awesome!',
                style: GoogleFonts.notoSansJavanese(),
              ),
              const SizedBox(height: 20),
              Text(
                'Dash is awesome!',
                style: GoogleFonts.abel(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
