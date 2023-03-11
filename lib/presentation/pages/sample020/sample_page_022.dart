import 'package:flutter/material.dart';

class SamplePage022 extends StatefulWidget {
  const SamplePage022({
    super.key,
  });

  @override
  SamplePage022State createState() => SamplePage022State();
}

class SamplePage022State extends State<SamplePage022> {
  bool _absorbing = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AbsorbPointer'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('押せる'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _SamplePage022IconButton(
                  onPressed: () {},
                ),
                _SamplePage022IconButton(
                  onPressed: () {},
                ),
              ],
            ),
            if (_absorbing) const Text('押せない') else const Text('押せる'),
            AbsorbPointer(
              absorbing: _absorbing,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _SamplePage022IconButton(
                    onPressed: () {},
                    color: Colors.red,
                  ),
                  _SamplePage022IconButton(
                    onPressed: () {},
                    color: Colors.red,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _absorbing = !_absorbing;
          });
        },
        child: const Icon(Icons.change_circle),
      ),
    );
  }
}

class _SamplePage022IconButton extends StatelessWidget {
  const _SamplePage022IconButton({
    required this.onPressed,
    this.color = Colors.blue,
  });

  final void Function()? onPressed;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        Icons.catching_pokemon,
        color: color,
      ),
    );
  }
}
