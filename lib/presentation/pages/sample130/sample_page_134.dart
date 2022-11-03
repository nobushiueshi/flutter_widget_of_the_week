import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SamplePage134 extends StatefulWidget {
  const SamplePage134({
    super.key,
  });

  @override
  State<SamplePage134> createState() => _SamplePage134State();
}

class _SamplePage134State extends State<SamplePage134> {
  final model = _SamplePage134Model();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shortcuts'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Shortcuts(
            shortcuts: <LogicalKeySet, Intent>{
              LogicalKeySet(
                LogicalKeyboardKey.control,
                LogicalKeyboardKey.keyA,
              ): _SamplePage134SelectAllIntent(),
            },
            child: Actions(
              dispatcher: _SamplePage134LoggingActionDispatcher(),
              actions: <Type, Action<Intent>>{
                _SamplePage134SelectAllIntent:
                    _SamplePage134SelectAllAction(model),
              },
              child: Builder(
                builder: (context) => TextButton(
                  onPressed: Actions.handler<_SamplePage134SelectAllIntent>(
                    context,
                    _SamplePage134SelectAllIntent(),
                  ),
                  child: const Text('SELECT ALL'),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _SamplePage134Model {
  void selectAll() {
    debugPrint('Model#selectAll');
  }
}

class _SamplePage134SelectAllIntent extends Intent {}

class _SamplePage134SelectAllAction
    extends Action<_SamplePage134SelectAllIntent> {
  _SamplePage134SelectAllAction(this.model);

  final _SamplePage134Model model;

  @override
  void invoke(covariant _SamplePage134SelectAllIntent intent) =>
      model.selectAll();
}

class _SamplePage134LoggingActionDispatcher extends ActionDispatcher {
  @override
  Object? invokeAction(
    covariant Action<Intent> action,
    covariant Intent intent, [
    BuildContext? context,
  ]) {
    debugPrint('Action invoked: $action($intent) from $context');
    super.invokeAction(action, intent, context);

    return null;
  }
}
