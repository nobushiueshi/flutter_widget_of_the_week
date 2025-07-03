import 'package:flutter_widget_of_the_week/presentation/pages/sample/sample_page_data.dart';
import 'package:flutter_widget_of_the_week/presentation/pages/sample160/sample_page_160.dart';
import 'package:flutter_widget_of_the_week/presentation/pages/sample160/sample_page_161.dart';
import 'package:flutter_widget_of_the_week/presentation/pages/sample160/sample_page_163.dart';
import 'package:flutter_widget_of_the_week/presentation/pages/sample160/sample_page_164.dart';
import 'package:flutter_widget_of_the_week/presentation/pages/sample160/sample_page_165.dart';
import 'package:flutter_widget_of_the_week/presentation/pages/sample160/sample_page_166.dart';

final sample160PageDataList = <SamplePageData>[
  SamplePageData(
    name: '#166 UnmodifiableListView',
    contentType: SamplePageContentType.technique,
    widget: const SamplePage166(),
  ),
  SamplePageData(
    name: '#165 Uint8List',
    contentType: SamplePageContentType.technique,
    widget: const SamplePage165(),
  ),
  SamplePageData(
    name: '#164 mix',
    contentType: SamplePageContentType.package,
    widget: const SamplePage164(),
  ),
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
