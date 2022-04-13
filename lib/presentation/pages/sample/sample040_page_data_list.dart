import 'package:flutter_widget_of_the_week/presentation/pages/sample/sample_page_data.dart';
import 'package:flutter_widget_of_the_week/presentation/pages/sample040/sample_page_040.dart';
import 'package:flutter_widget_of_the_week/presentation/pages/sample040/sample_page_041.dart';
import 'package:flutter_widget_of_the_week/presentation/pages/sample040/sample_page_042.dart';
import 'package:flutter_widget_of_the_week/presentation/pages/sample040/sample_page_043.dart';
import 'package:flutter_widget_of_the_week/presentation/pages/sample040/sample_page_044.dart';
import 'package:flutter_widget_of_the_week/presentation/pages/sample040/sample_page_045.dart';
import 'package:flutter_widget_of_the_week/presentation/pages/sample040/sample_page_046.dart';

final sample040PageDataList = <SamplePageData>[
  SamplePageData(name: '#46 IndexedStack', widget: const SamplePage046()),
  SamplePageData(name: '#45 AnimatedPadding', widget: const SamplePage045()),
  SamplePageData(name: '#44 AnimatedPositioned', widget: const SamplePage044()),
  SamplePageData(name: '#43 AnimatedSwitcher', widget: const SamplePage043()),
  SamplePageData(
    name: '#42 ReorderableListView',
    widget: const SamplePage042(),
  ),
  SamplePageData(name: '#41 RichText', widget: const SamplePage041()),
  SamplePageData(name: '#40 Placeholder', widget: const SamplePage040()),
];
