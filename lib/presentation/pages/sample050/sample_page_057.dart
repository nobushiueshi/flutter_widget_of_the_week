import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SamplePage057 extends StatefulWidget {
  const SamplePage057({
    Key? key,
  }) : super(key: key);

  @override
  State<SamplePage057> createState() => _SamplePage057State();
}

class _SamplePage057State extends State<SamplePage057> {
  double _sliderValue = 50;
  RangeValues _rangeValues = const RangeValues(25, 75);
  double _cupertinoSliderValue = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider & RangeSlider & CupertinoSlider'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Slider'),
            Slider(
              value: _sliderValue,
              min: 0,
              max: 100,
              onChanged: (value) {
                setState(() {
                  _sliderValue = value;
                });
              },
              divisions: 100,
              label: '${_sliderValue.toInt()}',
            ),
            const SizedBox(height: 20),
            const Text('RangeSlider'),
            RangeSlider(
              values: _rangeValues,
              min: 0,
              max: 100,
              onChanged: (values) {
                setState(() {
                  _rangeValues = values;
                });
              },
              divisions: 100,
              labels: RangeLabels(
                '${_rangeValues.start.toInt()}',
                '${_rangeValues.end.toInt()}',
              ),
            ),
            const SizedBox(height: 20),
            const Text('CupertinoSlider'),
            CupertinoSlider(
              value: _cupertinoSliderValue,
              min: 0,
              max: 100,
              onChanged: (value) {
                setState(() {
                  _cupertinoSliderValue = value;
                });
              },
              divisions: 100,
            ),
          ],
        ),
      ),
    );
  }
}
