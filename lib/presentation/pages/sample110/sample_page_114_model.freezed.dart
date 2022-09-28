// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sample_page_114_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SamplePage114Model _$SamplePage114ModelFromJson(Map<String, dynamic> json) {
  return _SamplePage114Model.fromJson(json);
}

/// @nodoc
mixin _$SamplePage114Model {
  String get name => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SamplePage114ModelCopyWith<SamplePage114Model> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SamplePage114ModelCopyWith<$Res> {
  factory $SamplePage114ModelCopyWith(
          SamplePage114Model value, $Res Function(SamplePage114Model) then) =
      _$SamplePage114ModelCopyWithImpl<$Res>;
  $Res call({String name, int age});
}

/// @nodoc
class _$SamplePage114ModelCopyWithImpl<$Res>
    implements $SamplePage114ModelCopyWith<$Res> {
  _$SamplePage114ModelCopyWithImpl(this._value, this._then);

  final SamplePage114Model _value;
  // ignore: unused_field
  final $Res Function(SamplePage114Model) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? age = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_SamplePage114ModelCopyWith<$Res>
    implements $SamplePage114ModelCopyWith<$Res> {
  factory _$$_SamplePage114ModelCopyWith(_$_SamplePage114Model value,
          $Res Function(_$_SamplePage114Model) then) =
      __$$_SamplePage114ModelCopyWithImpl<$Res>;
  @override
  $Res call({String name, int age});
}

/// @nodoc
class __$$_SamplePage114ModelCopyWithImpl<$Res>
    extends _$SamplePage114ModelCopyWithImpl<$Res>
    implements _$$_SamplePage114ModelCopyWith<$Res> {
  __$$_SamplePage114ModelCopyWithImpl(
      _$_SamplePage114Model _value, $Res Function(_$_SamplePage114Model) _then)
      : super(_value, (v) => _then(v as _$_SamplePage114Model));

  @override
  _$_SamplePage114Model get _value => super._value as _$_SamplePage114Model;

  @override
  $Res call({
    Object? name = freezed,
    Object? age = freezed,
  }) {
    return _then(_$_SamplePage114Model(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SamplePage114Model
    with DiagnosticableTreeMixin
    implements _SamplePage114Model {
  const _$_SamplePage114Model({required this.name, this.age = 0});

  factory _$_SamplePage114Model.fromJson(Map<String, dynamic> json) =>
      _$$_SamplePage114ModelFromJson(json);

  @override
  final String name;
  @override
  @JsonKey()
  final int age;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SamplePage114Model(name: $name, age: $age)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SamplePage114Model'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('age', age));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SamplePage114Model &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.age, age));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(age));

  @JsonKey(ignore: true)
  @override
  _$$_SamplePage114ModelCopyWith<_$_SamplePage114Model> get copyWith =>
      __$$_SamplePage114ModelCopyWithImpl<_$_SamplePage114Model>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SamplePage114ModelToJson(
      this,
    );
  }
}

abstract class _SamplePage114Model implements SamplePage114Model {
  const factory _SamplePage114Model(
      {required final String name, final int age}) = _$_SamplePage114Model;

  factory _SamplePage114Model.fromJson(Map<String, dynamic> json) =
      _$_SamplePage114Model.fromJson;

  @override
  String get name;
  @override
  int get age;
  @override
  @JsonKey(ignore: true)
  _$$_SamplePage114ModelCopyWith<_$_SamplePage114Model> get copyWith =>
      throw _privateConstructorUsedError;
}
