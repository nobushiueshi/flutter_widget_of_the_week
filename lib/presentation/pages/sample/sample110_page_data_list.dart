import 'package:flutter_widget_of_the_week/presentation/pages/sample/sample_page_data.dart';
import 'package:flutter_widget_of_the_week/presentation/pages/sample110/sample_page_110.dart';
import 'package:flutter_widget_of_the_week/presentation/pages/sample110/sample_page_111.dart';
import 'package:flutter_widget_of_the_week/presentation/pages/sample110/sample_page_112.dart';

final sample110PageDataList = <SamplePageData>[
  SamplePageData(
    name: '#112 cached_network_image',
    widget: const SamplePage112(),
  ),
  SamplePageData(name: '#111 Theme', widget: const SamplePage111()),
  SamplePageData(name: '#110 TabPageSelector', widget: const SamplePage110()),
];
