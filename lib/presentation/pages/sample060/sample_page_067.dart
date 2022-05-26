import 'package:flutter/material.dart';

class SamplePage067 extends StatefulWidget {
  const SamplePage067({
    super.key,
  });

  @override
  State<SamplePage067> createState() => _SamplePage067State();
}

class _SamplePage067State extends State<SamplePage067> {
  var _message = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              child: Text('ヘッダー'),
            ),
            ListTile(
              title: const Text('ホーム'),
              onTap: () {
                setState(() {
                  _message = 'ホーム';
                });
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              title: const Text('閉じる'),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Text(_message),
        ),
      ),
    );
  }
}
