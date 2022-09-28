import 'package:flutter/material.dart';
import 'package:flutter_widget_of_the_week/presentation/pages/sample110/sample_page_114_model.dart';

class SamplePage114 extends StatefulWidget {
  const SamplePage114({
    super.key,
  });

  @override
  State<SamplePage114> createState() => _SamplePage114State();
}

class _SamplePage114State extends State<SamplePage114> {
  late SamplePage114Model model1;
  late SamplePage114Model model2;
  late SamplePage114Model model3;

  @override
  void initState() {
    super.initState();

    model1 = const SamplePage114Model(name: 'Taro', age: 20);
    model2 = model1.copyWith(age: 40);
    model3 = SamplePage114Model.fromJson(
      <String, dynamic>{'name': 'Tom', 'age': 30},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('freezed'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('model1'),
            Text(model1.toString()),
            Text(model1.toJson().toString()),
            const SizedBox(height: 20),
            const Text('model2'),
            Text(model2.toString()),
            Text(model2.toJson().toString()),
            const SizedBox(height: 20),
            const Text('model3'),
            Text(model3.toString()),
            Text(model3.toJson().toString()),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
