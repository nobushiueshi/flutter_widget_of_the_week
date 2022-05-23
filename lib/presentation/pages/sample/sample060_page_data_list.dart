import 'package:flutter_widget_of_the_week/presentation/pages/sample/sample_page_data.dart';
import 'package:flutter_widget_of_the_week/presentation/pages/sample060/sample_page_060.dart';
import 'package:flutter_widget_of_the_week/presentation/pages/sample060/sample_page_061.dart';
import 'package:flutter_widget_of_the_week/presentation/pages/sample060/sample_page_062.dart';
import 'package:flutter_widget_of_the_week/presentation/pages/sample060/sample_page_063.dart';

final sample060PageDataList = <SamplePageData>[
  SamplePageData(
    name: '#63 CupertinoActionSheet',
    widget: const SamplePage063(),
  ),
  SamplePageData(name: '#62 ToggleButtons', widget: const SamplePage062()),
  SamplePageData(name: '#61 ColorFiltered', widget: const SamplePage061()),
  SamplePageData(
    name: '#60 DraggableScrollableSheet',
    widget: const SamplePage060(),
  ),
];
