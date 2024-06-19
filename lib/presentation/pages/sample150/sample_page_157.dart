import 'package:flutter/material.dart';

class SamplePage157 extends StatefulWidget {
  const SamplePage157({
    super.key,
  });

  @override
  State<SamplePage157> createState() => _SamplePage157State();
}

class _SamplePage157State extends State<SamplePage157> {
  Set<String> _multiSelected = {'Inbox'};
  Set<String> _selected = {'Inbox'};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SegmentedButton'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('multiSelectionEnabled: true'),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SegmentedButton(
                  multiSelectionEnabled: true,
                  segments: const [
                    ButtonSegment<String>(
                      value: 'Inbox',
                      label: Text('Inbox'),
                    ),
                    ButtonSegment<String>(
                      value: 'Primary',
                      label: Text('Primary'),
                    ),
                    ButtonSegment<String>(
                      value: 'Everything Else',
                      label: Text('Everything Else'),
                    ),
                  ],
                  selected: _multiSelected,
                  onSelectionChanged: (newSelection) {
                    setState(() {
                      _multiSelected = newSelection;
                    });
                  },
                ),
              ),
              const SizedBox(height: 80),
              const Text('multiSelectionEnabled: false'),
              const SizedBox(height: 20),
              SegmentedButton(
                segments: const [
                  ButtonSegment<String>(
                    value: 'Inbox',
                    icon: Icon(Icons.inbox_outlined),
                  ),
                  ButtonSegment<String>(
                    value: 'Primary',
                    icon: Icon(Icons.priority_high_outlined),
                  ),
                  ButtonSegment<String>(
                    value: 'Everything Else',
                    icon: Icon(Icons.web_stories_outlined),
                  ),
                ],
                selected: _selected,
                onSelectionChanged: (newSelection) {
                  setState(() {
                    _selected = newSelection;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
