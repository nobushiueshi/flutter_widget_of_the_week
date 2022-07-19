import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SamplePage084 extends StatelessWidget {
  const SamplePage084({
    super.key,
  });

  String get url => 'https://flutter.dev/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('url_launcher'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            ListTile(
              title: const Text('アプリ内ブラウザで開く'),
              onTap: () async {
                if (!await canLaunchUrlString(url)) {
                  return;
                }
                await launchUrlString(
                  url,
                  mode: LaunchMode.inAppWebView,
                );
              },
            ),
            ListTile(
              title: const Text('外部ブラウザで開く'),
              onTap: () async {
                if (!await canLaunchUrlString(url)) {
                  return;
                }
                await launchUrlString(
                  url,
                  mode: LaunchMode.externalApplication,
                );
              },
            ),
            ListTile(
              title: const Text('不正なURLブラウザは開かない'),
              onTap: () async {
                const dummyUrl = 'dummy';
                if (!await canLaunchUrlString(dummyUrl)) {
                  debugPrint('不正なURL');
                  return;
                }
                await launchUrlString(dummyUrl);
              },
            ),
          ],
        ),
      ),
    );
  }
}
