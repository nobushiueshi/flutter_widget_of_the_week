import 'package:flutter/material.dart';

class SamplePage075 extends StatelessWidget {
  const SamplePage075({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Divider'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const FlutterLogo(
                size: 64,
              ),
              const Divider(),
              const FlutterLogo(
                size: 64,
              ),
              const Divider(
                color: Colors.blue,
                indent: 20,
                endIndent: 20,
                thickness: 5,
              ),
              ListView(
                shrinkWrap: true,
                children: ListTile.divideTiles(
                  context: context,
                  color: Colors.yellow,
                  tiles: List.generate(
                    3,
                    (index) => ListTile(
                      title: Text('ListTile.divideTiles : $index'),
                    ),
                  ),
                ).toList(),
              ),
              const Divider(),
              ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('ListView.separated : $index'),
                  );
                },
                separatorBuilder: (context, index) {
                  return const Divider(
                    color: Colors.red,
                  );
                },
                itemCount: 3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
