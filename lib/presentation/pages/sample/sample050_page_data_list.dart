import 'package:flutter_widget_of_the_week/presentation/pages/sample/sample_page_data.dart';
import 'package:flutter_widget_of_the_week/presentation/pages/sample050/sample_page_050.dart';
import 'package:flutter_widget_of_the_week/presentation/pages/sample050/sample_page_051.dart';
import 'package:flutter_widget_of_the_week/presentation/pages/sample050/sample_page_052.dart';
import 'package:flutter_widget_of_the_week/presentation/pages/sample050/sample_page_053.dart';
import 'package:flutter_widget_of_the_week/presentation/pages/sample050/sample_page_054.dart';
import 'package:flutter_widget_of_the_week/presentation/pages/sample050/sample_page_055.dart';

final sample050PageDataList = <SamplePageData>[
  SamplePageData(name: '#55 SelectableText', widget: const SamplePage055()),
  SamplePageData(name: '#54 Container', widget: const SamplePage054()),
  SamplePageData(name: '#53 ListTile', widget: const SamplePage053()),
  SamplePageData(name: '#52 ListView', widget: const SamplePage052()),
  SamplePageData(
    name: '#51 FractionallySizedBox',
    widget: const SamplePage051(),
  ),
  SamplePageData(name: '#50 AnimatedOpacity', widget: const SamplePage050()),
];
