import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SamplePage111 extends StatefulWidget {
  const SamplePage111({
    super.key,
  });

  @override
  State<SamplePage111> createState() => _SamplePage111State();
}

class _SamplePage111State extends State<SamplePage111> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.orange,
        ),
        textTheme: GoogleFonts.emilysCandyTextTheme(),
        scaffoldBackgroundColor: Colors.orange[100],
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Theme'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _counter += 1;
            });
          },
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ), //
      ),
    );
  }
}
