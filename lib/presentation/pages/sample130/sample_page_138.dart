import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SamplePage138 extends StatefulWidget {
  const SamplePage138({
    super.key,
  });

  @override
  SamplePage138State createState() => SamplePage138State();
}

class SamplePage138State extends State<SamplePage138> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
    );
  }

  final router = GoRouter(
    initialLocation: '/main',
    routes: [
      GoRoute(
        path: '/main',
        builder: (context, state) => const SamplePage138Main(),
        routes: [
          GoRoute(
            path: 'sub1',
            builder: (context, state) => const SamplePage138Sub1(),
          ),
          GoRoute(
            path: 'sub2',
            builder: (context, state) => const SamplePage138Sub2(),
            routes: [
              GoRoute(
                path: 'sub3',
                builder: (context, state) => const SamplePage138Sub3(),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}

class SamplePage138Main extends StatelessWidget {
  const SamplePage138Main({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('go_router'),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            ListTile(
              title: const Text('Sub1'),
              trailing: const Icon(Icons.navigate_next),
              onTap: () {
                context.go('/main/sub1');
              },
            ),
            ListTile(
              title: const Text('Sub2'),
              trailing: const Icon(Icons.navigate_next),
              onTap: () {
                context.go('/main/sub2');
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SamplePage138Sub1 extends StatelessWidget {
  const SamplePage138Sub1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sub1'),
      ),
    );
  }
}

class SamplePage138Sub2 extends StatelessWidget {
  const SamplePage138Sub2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sub2'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.go('/main/sub2/sub3');
        },
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}

class SamplePage138Sub3 extends StatelessWidget {
  const SamplePage138Sub3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sub3'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.go('/main');
        },
        child: const Icon(Icons.home),
      ),
    );
  }
}
