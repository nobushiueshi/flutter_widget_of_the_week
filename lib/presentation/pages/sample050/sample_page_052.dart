import 'package:flutter/material.dart';

class SamplePage052 extends StatefulWidget {
  const SamplePage052({
    super.key,
  });

  @override
  State<SamplePage052> createState() => _SamplePage052State();
}

class _SamplePage052State extends State<SamplePage052> {
  bool _isVertical = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView.builder(
          scrollDirection: _isVertical ? Axis.vertical : Axis.horizontal,
          itemCount: 20,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.all(5),
              padding: const EdgeInsets.all(20),
              color: Colors.orange,
              child: Center(
                child: Text(
                  index.toString(),
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _isVertical = !_isVertical;
          });
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
