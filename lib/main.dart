// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:feedback/feedback.dart';
// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_widget_of_the_week/firebase_options.dart';
import 'package:flutter_widget_of_the_week/presentation/pages/sample/sample_page_data_list.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // // Firebase.
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  // // Firebase Crashlytics.
  // FlutterError.onError = (errorDetails) {
  //   FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
  // };
  // // Pass all uncaught asynchronous errors that aren't handled by the Flutter
  // // framework to Crashlytics
  // PlatformDispatcher.instance.onError = (error, stack) {
  //   FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
  //   return true;
  // };

  runApp(
    const BetterFeedback(
      child: MyApp(),
    ),
  );
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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Widget of the Week'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    required this.title,
    super.key,
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
                  subtitle: Text(page.contentType.title),
                  trailing: page.widget != null
                      ? const Icon(Icons.navigate_next_outlined)
                      : const Icon(Icons.cancel_outlined),
                  onTap: page.widget != null
                      ? () {
                          Navigator.push<void>(
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
    );
  }
}
