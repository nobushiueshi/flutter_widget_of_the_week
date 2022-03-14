import 'package:flutter_widget_of_the_week/presentation/pages/sample/sample_page_data.dart';
import 'package:flutter_widget_of_the_week/presentation/pages/sample030/sample_page_030.dart';
import 'package:flutter_widget_of_the_week/presentation/pages/sample030/sample_page_031.dart';
import 'package:flutter_widget_of_the_week/presentation/pages/sample030/sample_page_032.dart';
import 'package:flutter_widget_of_the_week/presentation/pages/sample030/sample_page_033.dart';

final sample030PageDataList = <SamplePageData>[
  SamplePageData(name: '#33 Flexible', widget: const SamplePage033()),
  SamplePageData(name: '#32 AnimatedList', widget: const SamplePage032()),
  SamplePageData(name: '#31 Draggable', widget: const SamplePage031()),
  SamplePageData(
    name: '#30 ValueListenableBuilder',
    widget: const SamplePage030(),
  ),
];
