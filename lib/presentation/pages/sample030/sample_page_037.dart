import 'package:flutter/material.dart';

class SamplePage037 extends StatefulWidget {
  const SamplePage037({Key? key}) : super(key: key);

  @override
  State<SamplePage037> createState() => _SamplePage037State();
}

class _SamplePage037State extends State<SamplePage037>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  bool _status = false;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedIcon'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedIcon(
                icon: AnimatedIcons.pause_play,
                progress: _animationController,
              ),
              const SizedBox(height: 20),
              AnimatedIcon(
                icon: AnimatedIcons.close_menu,
                progress: _animationController,
              ),
              const SizedBox(height: 20),
              AnimatedIcon(
                icon: AnimatedIcons.list_view,
                progress: _animationController,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (!_status) {
            _animationController.forward();
          } else {
            _animationController.reverse();
          }
          setState(() {
            _status = !_status;
          });
        },
        child: const Icon(Icons.replay),
      ),
    );
  }
}
