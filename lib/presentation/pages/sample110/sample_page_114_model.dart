import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sample_page_114_model.freezed.dart';
part 'sample_page_114_model.g.dart';

@freezed
abstract class SamplePage114Model implements _$SamplePage114Model {
  const factory SamplePage114Model({
    required String name,
    @Default(0) int age,
  }) = _SamplePage114Model;

  factory SamplePage114Model.fromJson(Map<String, dynamic> json) =>
      _$SamplePage114ModelFromJson(json);
}
