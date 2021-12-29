import 'package:flutter/material.dart';
import 'package:flutter_widget_of_the_week/presentation/pages/sample000/sample000_importer.dart';
import 'package:flutter_widget_of_the_week/presentation/pages/sample010/sample010_importer.dart';

class SamplePageData {
  SamplePageData({
    required this.name,
    required this.widget,
  });

  final String name;
  final Widget widget;
}

final samplePageDataList = <SamplePageData>[
  SamplePageData(name: '#13 FadeInImage', widget: const SamplePage013()),
  SamplePageData(
      name: '#12 SliverList & SliverGrid', widget: const SamplePage012()),
  SamplePageData(name: '#11 SliverAppBar', widget: const SamplePage011()),
  SamplePageData(name: '#10 Table', widget: const SamplePage010()),
  SamplePageData(name: '#9 PageView', widget: const SamplePage009()),
  SamplePageData(
      name: '#8 FloatingActionButton', widget: const SamplePage008()),
  SamplePageData(name: '#7 FadeTransition', widget: const SamplePage007()),
  SamplePageData(name: '#6 FutureBuilder', widget: const SamplePage006()),
  SamplePageData(name: '#5 Opacity', widget: const SamplePage005()),
  SamplePageData(name: '#4 AnimatedContainer', widget: const SamplePage004()),
  SamplePageData(name: '#3 Wrap', widget: const SamplePage003()),
  SamplePageData(name: '#2 Expanded', widget: const SamplePage002()),
  SamplePageData(name: '#1 SafeArea', widget: const SamplePage001()),
];
