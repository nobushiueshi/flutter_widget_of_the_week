import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

class SamplePage104 extends StatefulWidget {
  const SamplePage104({
    super.key,
  });

  @override
  State<SamplePage104> createState() => _SamplePage104State();
}

class _SamplePage104State extends State<SamplePage104> {
  final a = <String>['Nilay', 'Brett', 'Shams', 'Kathy'];
  final b = <String>['Nilay', 'Andrew', 'Fitz', 'Filip'];
  final c = [
    {'apple', 'red'},
    {'banana', 'yellow'}
  ];
  final d = [
    {'apple', 'red'},
    {'banana', 'black'}
  ];

  @override
  void initState() {
    super.initState();

    final queue = PriorityQueue<_Sample104Person>(
      (a, b) => a.kindness.compareTo(b.kindness),
    )
      ..add(_Sample104Person(kindness: 2))
      ..add(_Sample104Person(kindness: 3));
    final mom = queue.removeFirst();
    debugPrint('mom : ${mom.kindness}');

    final team = _Sample104Team(<_Sample104Person>{
      _Sample104Person(kindness: 1),
    });

    // UnsupportedError.
    // team.people.add(
    //   _Sample104Person(kindness: 2),
    // );
    debugPrint('team : ${team.length}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('collection'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('a : $a'),
              Text('b : $b'),
              Text(
                'ListEquality().equals(a, b):'
                '${const ListEquality<String>().equals(a, b)}',
              ),
              const SizedBox(height: 20),
              Text('c : $c'),
              Text('d : $d'),
              Text(
                'DeepCollectionEquality().equals(c, d):'
                '${const DeepCollectionEquality().equals(c, d)}',
              ),
              const SizedBox(height: 20),
              Text('sum : ${[1, 2, 3, 4].sum}'),
              Text('average  :${[1, 2, 3, 4].average}'),
            ],
          ),
        ),
      ),
    );
  }
}

class _Sample104Person {
  _Sample104Person({
    required this.kindness,
  });

  final int kindness;
}

class _Sample104Team {
  _Sample104Team(
    this._people,
  );

  final Set<_Sample104Person> _people;

  UnmodifiableSetView<_Sample104Person> get people =>
      UnmodifiableSetView(_people);

  int get length => _people.length;
}
