import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SamplePage063 extends StatefulWidget {
  const SamplePage063({
    Key? key,
  }) : super(key: key);

  @override
  State<SamplePage063> createState() => _SamplePage063State();
}

class _SamplePage063State extends State<SamplePage063> {
  String _text = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CupertinoActionSheet'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Text(_text),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final text = await showCupertinoModalPopup<String>(
            context: context,
            builder: (context) {
              return CupertinoActionSheet(
                title: const Text('タイトル'),
                message: const Text('メッセージ'),
                actions: [
                  CupertinoActionSheetAction(
                    onPressed: () {
                      Navigator.of(context).pop('Hello');
                    },
                    isDefaultAction: true,
                    child: const Text('Hello'),
                  ),
                  CupertinoActionSheetAction(
                    onPressed: () {
                      Navigator.of(context).pop('Goodbye');
                    },
                    child: const Text('Goodbye'),
                  )
                ],
                cancelButton: CupertinoActionSheetAction(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  isDestructiveAction: true,
                  child: const Text('キャンセル'),
                ),
              );
            },
          );
          if (text == null) {
            return;
          }
          setState(() {
            _text = text;
          });
        },
        child: const Icon(Icons.open_in_new),
      ),
    );
  }
}
