import 'package:flutter/material.dart';
import 'package:flutter_widget_of_the_week/widgets/widget_001.dart';
import 'package:flutter_widget_of_the_week/widgets/widget_002.dart';
import 'package:flutter_widget_of_the_week/widgets/widget_003.dart';
import 'package:flutter_widget_of_the_week/widgets/widget_004.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

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
          children: [
            ListTile(
              title: const Text('#4 AnimatedContainer'),
              onTap: () {
                Navigator.push<void>(context,
                    MaterialPageRoute(builder: (context) {
                  return const Widget004();
                }));
              },
            ),
            ListTile(
              title: const Text('#3 Wrap'),
              onTap: () {
                Navigator.push<void>(context,
                    MaterialPageRoute(builder: (context) {
                  return const Widget003();
                }));
              },
            ),
            ListTile(
              title: const Text('#2 Expanded'),
              onTap: () {
                Navigator.push<void>(context,
                    MaterialPageRoute(builder: (context) {
                  return const Widget002();
                }));
              },
            ),
            ListTile(
              title: const Text('#1 SafeArea'),
              onTap: () {
                Navigator.push<void>(context,
                    MaterialPageRoute(builder: (context) {
                  return const Widget001();
                }));
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
