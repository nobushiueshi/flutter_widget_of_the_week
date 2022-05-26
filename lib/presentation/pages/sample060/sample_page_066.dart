import 'package:flutter/material.dart';

class SamplePage066 extends StatefulWidget {
  const SamplePage066({
    super.key,
  });

  @override
  State<SamplePage066> createState() => _SamplePage066State();
}

class _SamplePage066State extends State<SamplePage066> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('DefaultTabController & TabBar & TabBarView'),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Home'),
              Tab(text: 'Flutter'),
              Tab(text: 'Settings'),
            ],
          ),
        ),
        body: const SafeArea(
          child: TabBarView(
            children: [
              Icon(
                Icons.home,
                size: 128,
              ),
              Icon(
                Icons.flutter_dash,
                size: 128,
              ),
              Icon(
                Icons.settings,
                size: 128,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
