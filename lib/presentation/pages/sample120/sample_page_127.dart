import 'package:flutter/material.dart';

class SamplePage127 extends StatefulWidget {
  const SamplePage127({
    super.key,
  });

  @override
  State<SamplePage127> createState() => _SamplePage127State();
}

class _SamplePage127State extends State<SamplePage127> {
  int selectedIndex = 0;

  final List<String> messages = [
    'Home',
    'Bookmark',
    'Settings',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NavigationRail'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Row(
          children: [
            NavigationRail(
              selectedIndex: selectedIndex,
              onDestinationSelected: (value) {
                setState(() {
                  selectedIndex = value;
                });
              },
              labelType: NavigationRailLabelType.all,
              destinations: const [
                NavigationRailDestination(
                  icon: Icon(Icons.home),
                  label: Text('Home'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.bookmark),
                  label: Text('Bookmark'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.settings),
                  label: Text('Settings'),
                ),
              ],
            ),
            const VerticalDivider(width: 0),
            Expanded(
              child: Center(
                child: Text(messages[selectedIndex]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
