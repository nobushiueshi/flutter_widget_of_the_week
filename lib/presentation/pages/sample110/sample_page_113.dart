import 'package:flutter/material.dart';

class SamplePage113 extends StatefulWidget {
  const SamplePage113({
    super.key,
  });

  @override
  State<SamplePage113> createState() => _SamplePage113State();
}

class _SamplePage113State extends State<SamplePage113> {
  String message = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GestureDetector'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('下のロゴをタップかダブルタップしてみて'),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                setState(() {
                  message = 'タップされた';
                });
              },
              onDoubleTap: () {
                setState(() {
                  message = 'ダブルタップされた';
                });
              },
              child: const FlutterLogo(
                size: 128,
              ),
            ),
            Text(message),
          ],
        ),
      ),
    );
  }
}
/*

        
        
        .network(
          
          width: 128,
          loadingBuilder: (context, child, progress) {
            return progress == null ? child : const CircularProgressIndicator();
          },
        ),
        */