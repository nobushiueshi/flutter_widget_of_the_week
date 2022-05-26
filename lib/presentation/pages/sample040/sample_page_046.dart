import 'package:flutter/material.dart';

class SamplePage046 extends StatefulWidget {
  const SamplePage046({
    super.key,
  });

  @override
  State<SamplePage046> createState() => _SamplePage046State();
}

class _SamplePage046State extends State<SamplePage046> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IndexedStack'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: IndexedStack(
          index: _currentIndex,
          children: const [
            _SamplePage046Child(
              text: 'Home',
            ),
            _SamplePage046Child(
              text: 'Settings',
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

class _SamplePage046Child extends StatefulWidget {
  const _SamplePage046Child({
    required this.text,
  });

  final String text;

  @override
  State<_SamplePage046Child> createState() => _SamplePage046ChildState();
}

class _SamplePage046ChildState extends State<_SamplePage046Child> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                widget.text,
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: widget.text,
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            _counter += 1;
          });
        },
      ),
    );
  }
}
