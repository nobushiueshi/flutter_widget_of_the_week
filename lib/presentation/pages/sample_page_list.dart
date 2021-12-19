import 'package:flutter/material.dart';
import 'package:flutter_widget_of_the_week/presentation/pages/sample000/sample_page_001.dart';
import 'package:flutter_widget_of_the_week/presentation/pages/sample000/sample_page_002.dart';
import 'package:flutter_widget_of_the_week/presentation/pages/sample000/sample_page_003.dart';
import 'package:flutter_widget_of_the_week/presentation/pages/sample000/sample_page_004.dart';
import 'package:flutter_widget_of_the_week/presentation/pages/sample000/sample_page_005.dart';
import 'package:flutter_widget_of_the_week/presentation/pages/sample000/sample_page_006.dart';
import 'package:flutter_widget_of_the_week/presentation/pages/sample000/sample_page_007.dart';
import 'package:flutter_widget_of_the_week/presentation/pages/sample000/sample_page_008.dart';
import 'package:flutter_widget_of_the_week/presentation/pages/sample000/sample_page_009.dart';
import 'package:flutter_widget_of_the_week/presentation/pages/sample010/sample_page_010.dart';

class SamplePageData {
  SamplePageData({
    required this.name,
    required this.widget,
  });

  final String name;
  final Widget widget;
}

final samplePageDataList = <SamplePageData>[
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
