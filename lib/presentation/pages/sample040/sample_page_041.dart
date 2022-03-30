import 'package:flutter/material.dart';

class SamplePage041 extends StatelessWidget {
  const SamplePage041({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Placeholder'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: RichText(
            text: TextSpan(
              text: 'Hello ',
              style: Theme.of(context).textTheme.bodyText1,
              children: const <TextSpan>[
                TextSpan(
                  text: 'bold',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: ' world!',
                  style: TextStyle(
                    color: Colors.red,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
