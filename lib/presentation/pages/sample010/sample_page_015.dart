import 'package:flutter/material.dart';

class SamplePage015 extends StatelessWidget {
  const SamplePage015({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('InheritedModel'),
      ),
      body: _SamplePage015Stateful(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            _SamplePage015ColorOneWidget(),
            _SamplePage015ColorTwoWidget(),
            _SamplePage015ColorChangerWidget(),
          ],
        ),
      ),
    );
  }
}

class _SamplePage015Stateful extends StatefulWidget {
  const _SamplePage015Stateful({
    required this.child,
  });

  final Widget child;

  @override
  _SamplePage015StatefulState createState() => _SamplePage015StatefulState();
}

class _SamplePage015StatefulState extends State<_SamplePage015Stateful> {
  Color colorOne = Colors.red;
  Color colorTwo = Colors.blue;

  static _SamplePage015StatefulState? of(BuildContext context) {
    return context.findAncestorStateOfType<_SamplePage015StatefulState>();
  }

  void changeColorOne() {
    setState(() {
      colorOne = (colorOne == Colors.red) ? Colors.green : Colors.red;
    });
  }

  void changeColorTwo() {
    setState(() {
      colorTwo = (colorTwo == Colors.blue) ? Colors.yellow : Colors.blue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return _SamplePage015InheritedModel(
      colorOne,
      colorTwo,
      widget.child,
    );
  }
}

class _SamplePage015InheritedModel extends InheritedModel<String> {
  const _SamplePage015InheritedModel(
    this.colorOne,
    this.colorTwo,
    Widget child,
  ) : super(child: child);

  final Color colorOne;
  final Color colorTwo;

  // ignore: unused_element
  static _SamplePage015InheritedModel? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<_SamplePage015InheritedModel>();
  }

  @override
  bool updateShouldNotify(_SamplePage015InheritedModel oldWidget) {
    return colorOne != oldWidget.colorOne || colorTwo != oldWidget.colorTwo;
  }

  @override
  bool updateShouldNotifyDependent(
    _SamplePage015InheritedModel oldWidget,
    Set<String> dependencies,
  ) {
    if (dependencies.contains('one') && colorOne != oldWidget.colorOne) {
      return true;
    }
    if (dependencies.contains('two') && colorTwo != oldWidget.colorTwo) {
      return true;
    }
    return false;
  }
}

class _SamplePage015ColorOneWidget extends StatelessWidget {
  const _SamplePage015ColorOneWidget();

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_print
    print('_SamplePage015ColorOneWidget#build');
    final inherited = InheritedModel.inheritFrom<_SamplePage015InheritedModel>(
      context,
      aspect: 'one',
    );
    return Container(
      color: inherited?.colorOne,
      height: 100,
      width: 100,
    );
  }
}

class _SamplePage015ColorTwoWidget extends StatelessWidget {
  const _SamplePage015ColorTwoWidget();

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_print
    print('_SamplePage015ColorTwoWidget#build');
    final inherited = InheritedModel.inheritFrom<_SamplePage015InheritedModel>(
      context,
      aspect: 'two',
    );
    return Container(
      color: inherited?.colorTwo,
      height: 100,
      width: 100,
    );
  }
}

class _SamplePage015ColorChangerWidget extends StatelessWidget {
  const _SamplePage015ColorChangerWidget();

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_print
    print('_SamplePage015ColorChangerWidget#build');
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ElevatedButton(
          onPressed: () =>
              _SamplePage015StatefulState.of(context)?.changeColorOne(),
          child: const Text('Change colorOne'),
        ),
        ElevatedButton(
          onPressed: () =>
              _SamplePage015StatefulState.of(context)?.changeColorTwo(),
          child: const Text('Change colorTwo'),
        ),
      ],
    );
  }
}
