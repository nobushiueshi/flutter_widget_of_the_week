import 'package:flutter_widget_of_the_week/presentation/pages/sample/sample_page_data.dart';
import 'package:flutter_widget_of_the_week/presentation/pages/sample160/sample_page_160.dart';
import 'package:flutter_widget_of_the_week/presentation/pages/sample160/sample_page_161.dart';
import 'package:flutter_widget_of_the_week/presentation/pages/sample160/sample_page_163.dart';

final sample160PageDataList = <SamplePageData>[
  SamplePageData(
    name: '#163 Completers',
    contentType: SamplePageContentType.technique,
    widget: const SamplePage163(),
  ),
  SamplePageData(
    name: '#162 firebase_vertexai',
    contentType: SamplePageContentType.package,
  ),
  SamplePageData(
    name: '#161 Future.wait',
    contentType: SamplePageContentType.technique,
    widget: const SamplePage161(),
  ),
  SamplePageData(
    name: '#160 List.generate',
    contentType: SamplePageContentType.technique,
    widget: const SamplePage160(),
  ),
];
