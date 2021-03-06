import 'package:flutter/material.dart';
import 'package:flutter_widget_of_the_week/presentation/pages/sample/sample_page_data_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widget of the Week',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Widget of the Week'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: ListView(
          children: samplePageDataList
              .map(
                (page) => ListTile(
                  title: Text(page.name),
                  onTap: () {
                    Navigator.push<void>(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return page.widget;
                        },
                      ),
                    );
                  },
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
