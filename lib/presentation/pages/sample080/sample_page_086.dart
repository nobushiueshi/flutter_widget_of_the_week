import 'package:flutter/material.dart';

class SamplePage086 extends StatelessWidget {
  const SamplePage086({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 200,
            stretch: true,
            floating: true,
            flexibleSpace: const FlexibleSpaceBar(
              title: Text('SliverAppBar'),
              background: FlutterLogo(
                size: 256,
              ),
              stretchModes: <StretchMode>[
                StretchMode.zoomBackground,
                StretchMode.blurBackground,
                StretchMode.fadeTitle,
              ],
            ),
            onStretchTrigger: () async {
              debugPrint('onStretchTrigger');
            },
          ),
          SliverFixedExtentList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.blue[100 * (index % 9)],
                child: Text('List Item $index'),
              );
            }),
            itemExtent: 50,
          ),
        ],
      ),
    );
  }
}
