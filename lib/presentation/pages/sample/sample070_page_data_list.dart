import 'package:flutter_widget_of_the_week/presentation/pages/sample/sample_page_data.dart';
import 'package:flutter_widget_of_the_week/presentation/pages/sample070/sample_page_070.dart';
import 'package:flutter_widget_of_the_week/presentation/pages/sample070/sample_page_071.dart';
import 'package:flutter_widget_of_the_week/presentation/pages/sample070/sample_page_072.dart';

final sample070PageDataList = <SamplePageData>[
  SamplePageData(name: '#72 Builder', widget: const SamplePage072()),
  SamplePageData(
    name: '#71 NotificationListener',
    widget: const SamplePage071(),
  ),
  SamplePageData(name: '#70 ShaderMask', widget: const SamplePage070()),
];
