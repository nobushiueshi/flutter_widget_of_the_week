import 'package:flutter/material.dart';
import 'package:flutter_widget_of_the_week/presentation/pages/sample/sample_page_data_list.dart';

class SampleApp extends StatelessWidget {
  const SampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widget of the Week',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: Builder(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: const Text('Flutter Widget of the Week'),
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          ),
          body: SafeArea(
            child: ListView(
              children: samplePageDataList
                  .map(
                    (page) => ListTile(
                      title: Text(page.name),
                      subtitle: Text(page.contentType.title),
                      trailing: page.widget != null
                          ? const Icon(Icons.navigate_next_outlined)
                          : const Icon(Icons.cancel_outlined),
                      onTap: page.widget != null
                          ? () async {
                              await Navigator.push<void>(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return page.widget!;
                                  },
                                ),
                              );
                            }
                          : null,
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }
}
