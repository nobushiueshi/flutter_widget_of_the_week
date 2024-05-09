import 'package:flutter/material.dart';

enum SamplePageContentType {
  widget('Flutter Widget of the Week'),
  package('Flutter Package of the Week'),
  technique('Flutter Technique of the Week');

  const SamplePageContentType(this.title);

  final String title;
}

class SamplePageData {
  SamplePageData({
    required this.name,
    required this.contentType,
    this.widget,
  });

  final String name;
  final SamplePageContentType contentType;
  final Widget? widget;
}
