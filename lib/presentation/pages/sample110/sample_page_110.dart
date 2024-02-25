import 'package:flutter/material.dart';

class SamplePage110 extends StatefulWidget {
  const SamplePage110({
    super.key,
  });

  @override
  State<SamplePage110> createState() => _SamplePage110State();
}

class _SamplePage110State extends State<SamplePage110>
    with SingleTickerProviderStateMixin {
  late final TabController tabController;

  final icons = const <IconData>[
    Icons.home,
    Icons.drive_eta,
    Icons.settings,
  ];

  @override
  void initState() {
    super.initState();
    tabController = TabController(
      length: 3,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TabPageSelector'),
        centerTitle: true,
        bottom: TabBar(
          controller: tabController,
          tabs: icons
              .map(
                (icon) => Tab(
                  child: Icon(icon),
                ),
              )
              .toList(),
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            TabBarView(
              controller: tabController,
              children: icons
                  .map(
                    (icon) => Center(
                      child: Icon(
                        icon,
                        size: 128,
                      ),
                    ),
                  )
                  .toList(),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Center(
                child: TabPageSelector(
                  controller: tabController,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
