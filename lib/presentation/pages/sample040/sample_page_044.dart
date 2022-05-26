import 'package:flutter/material.dart';

class SamplePage044 extends StatefulWidget {
  const SamplePage044({
    super.key,
  });

  @override
  State<SamplePage044> createState() => _SamplePage044State();
}

class _SamplePage044State extends State<SamplePage044> {
  bool _show = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedPositioned'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            width: 300,
            height: 400,
            color: Colors.lightBlue,
            child: Stack(
              children: [
                const Center(
                  child: Text(
                    'Hello!!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                ),
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 200),
                  right: 50,
                  bottom: _show ? 225 : 175,
                  child: GestureDetector(
                    child: Container(
                      width: 200,
                      height: 50,
                      color: Colors.blue[900],
                      child: const Icon(
                        Icons.touch_app,
                        color: Colors.white,
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        _show = !_show;
                      });
                    },
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
