import 'package:flutter_widget_of_the_week/presentation/pages/sample/sample_page_data.dart';
import 'package:flutter_widget_of_the_week/presentation/pages/sample120/sample_page_120.dart';
import 'package:flutter_widget_of_the_week/presentation/pages/sample120/sample_page_121.dart';
import 'package:flutter_widget_of_the_week/presentation/pages/sample120/sample_page_122.dart';
import 'package:flutter_widget_of_the_week/presentation/pages/sample120/sample_page_123.dart';
import 'package:flutter_widget_of_the_week/presentation/pages/sample120/sample_page_124.dart';
import 'package:flutter_widget_of_the_week/presentation/pages/sample120/sample_page_125.dart';
import 'package:flutter_widget_of_the_week/presentation/pages/sample120/sample_page_126.dart';

final sample120PageDataList = <SamplePageData>[
  SamplePageData(name: '#126 mason', widget: const SamplePage126()),
  SamplePageData(
    name: '#125 FocusableActionDetector',
    widget: const SamplePage125(),
  ),
  SamplePageData(
    name: '#124 shared_preferences',
    widget: const SamplePage124(),
  ),
  SamplePageData(name: '#123 google_fonts', widget: const SamplePage123()),
  SamplePageData(name: '#122 RepaintBoundary', widget: const SamplePage122()),
  SamplePageData(name: '#121 StatefulBuilder', widget: const SamplePage121()),
  SamplePageData(name: '#120 ScaffoldMessenger', widget: const SamplePage120()),
];
