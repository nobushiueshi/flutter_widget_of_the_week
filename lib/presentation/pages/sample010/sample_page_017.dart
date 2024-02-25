import 'package:flutter/material.dart';

class SamplePage017 extends StatelessWidget {
  const SamplePage017({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hero'),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            ListTile(
              leading: Hero(
                tag: 'sample017',
                child: ClipOval(
                  child: Image.asset('assets/sample.png'),
                ),
              ),
              title: const Text('Hero Sample'),
              trailing: const Icon(Icons.navigate_next),
              onTap: () {
                Navigator.push<void>(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return _SamplePage017DetailPage();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _SamplePage017DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hero'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Hero(
                tag: 'sample017',
                child: Image.asset('assets/sample.png'),
              ),
            ),
            const SizedBox(height: 20),
            const Text('Hero Sample'),
          ],
        ),
      ),
    );
  }
}
