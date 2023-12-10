// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sample_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SampleResponse _$SampleResponseFromJson(Map<String, dynamic> json) {
  return _SampleResponse.fromJson(json);
}

/// @nodoc
mixin _$SampleResponse {
  String get header => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SampleResponseCopyWith<SampleResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SampleResponseCopyWith<$Res> {
  factory $SampleResponseCopyWith(
          SampleResponse value, $Res Function(SampleResponse) then) =
      _$SampleResponseCopyWithImpl<$Res, SampleResponse>;
  @useResult
  $Res call({String header, String body, int age});
}

/// @nodoc
class _$SampleResponseCopyWithImpl<$Res, $Val extends SampleResponse>
    implements $SampleResponseCopyWith<$Res> {
  _$SampleResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? header = null,
    Object? body = null,
    Object? age = null,
  }) {
    return _then(_value.copyWith(
      header: null == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SampleResponseImplCopyWith<$Res>
    implements $SampleResponseCopyWith<$Res> {
  factory _$$SampleResponseImplCopyWith(_$SampleResponseImpl value,
          $Res Function(_$SampleResponseImpl) then) =
      __$$SampleResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String header, String body, int age});
}

/// @nodoc
class __$$SampleResponseImplCopyWithImpl<$Res>
    extends _$SampleResponseCopyWithImpl<$Res, _$SampleResponseImpl>
    implements _$$SampleResponseImplCopyWith<$Res> {
  __$$SampleResponseImplCopyWithImpl(
      _$SampleResponseImpl _value, $Res Function(_$SampleResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? header = null,
    Object? body = null,
    Object? age = null,
  }) {
    return _then(_$SampleResponseImpl(
      header: null == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SampleResponseImpl extends _SampleResponse {
  const _$SampleResponseImpl(
      {required this.header, required this.body, required this.age})
      : super._();

  factory _$SampleResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SampleResponseImplFromJson(json);

  @override
  final String header;
  @override
  final String body;
  @override
  final int age;

  @override
  String toString() {
    return 'SampleResponse(header: $header, body: $body, age: $age)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SampleResponseImpl &&
            (identical(other.header, header) || other.header == header) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.age, age) || other.age == age));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, header, body, age);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SampleResponseImplCopyWith<_$SampleResponseImpl> get copyWith =>
      __$$SampleResponseImplCopyWithImpl<_$SampleResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SampleResponseImplToJson(
      this,
    );
  }
}

abstract class _SampleResponse extends SampleResponse {
  const factory _SampleResponse(
      {required final String header,
      required final String body,
      required final int age}) = _$SampleResponseImpl;
  const _SampleResponse._() : super._();

  factory _SampleResponse.fromJson(Map<String, dynamic> json) =
      _$SampleResponseImpl.fromJson;

  @override
  String get header;
  @override
  String get body;
  @override
  int get age;
  @override
  @JsonKey(ignore: true)
  _$$SampleResponseImplCopyWith<_$SampleResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
