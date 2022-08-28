import 'package:flutter/material.dart';

class SamplePage097 extends StatefulWidget {
  const SamplePage097({
    super.key,
  });

  @override
  State<SamplePage097> createState() => _SamplePage097State();
}

class _SamplePage097State extends State<SamplePage097> {
  List<bool> isExpandedList = [
    false,
    false,
    false,
    false,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RotatedBox'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: ExpansionPanelList(
            children: [
              for (int i = 0; i < isExpandedList.length; i++)
                ExpansionPanel(
                  isExpanded: isExpandedList[i],
                  headerBuilder: (context, isExpanded) {
                    return Text('Hello index : $i');
                  },
                  body: Text('Now Open! index : $i'),
                ),
            ],
            expansionCallback: (panelIndex, isExpanded) {
              setState(() {
                isExpandedList[panelIndex] = !isExpandedList[panelIndex];
              });
            },
          ),
        ),
      ),
    );
  }
}
