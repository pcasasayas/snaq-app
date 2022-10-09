// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_config_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppConfigParams _$AppConfigParamsFromJson(Map<String, dynamic> json) {
  return _AppConfigParams.fromJson(json);
}

/// @nodoc
mixin _$AppConfigParams {
  String get baseApiUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppConfigParamsCopyWith<AppConfigParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppConfigParamsCopyWith<$Res> {
  factory $AppConfigParamsCopyWith(
          AppConfigParams value, $Res Function(AppConfigParams) then) =
      _$AppConfigParamsCopyWithImpl<$Res>;
  $Res call({String baseApiUrl});
}

/// @nodoc
class _$AppConfigParamsCopyWithImpl<$Res>
    implements $AppConfigParamsCopyWith<$Res> {
  _$AppConfigParamsCopyWithImpl(this._value, this._then);

  final AppConfigParams _value;
  // ignore: unused_field
  final $Res Function(AppConfigParams) _then;

  @override
  $Res call({
    Object? baseApiUrl = freezed,
  }) {
    return _then(_value.copyWith(
      baseApiUrl: baseApiUrl == freezed
          ? _value.baseApiUrl
          : baseApiUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_AppConfigParamsCopyWith<$Res>
    implements $AppConfigParamsCopyWith<$Res> {
  factory _$$_AppConfigParamsCopyWith(
          _$_AppConfigParams value, $Res Function(_$_AppConfigParams) then) =
      __$$_AppConfigParamsCopyWithImpl<$Res>;
  @override
  $Res call({String baseApiUrl});
}

/// @nodoc
class __$$_AppConfigParamsCopyWithImpl<$Res>
    extends _$AppConfigParamsCopyWithImpl<$Res>
    implements _$$_AppConfigParamsCopyWith<$Res> {
  __$$_AppConfigParamsCopyWithImpl(
      _$_AppConfigParams _value, $Res Function(_$_AppConfigParams) _then)
      : super(_value, (v) => _then(v as _$_AppConfigParams));

  @override
  _$_AppConfigParams get _value => super._value as _$_AppConfigParams;

  @override
  $Res call({
    Object? baseApiUrl = freezed,
  }) {
    return _then(_$_AppConfigParams(
      baseApiUrl: baseApiUrl == freezed
          ? _value.baseApiUrl
          : baseApiUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppConfigParams implements _AppConfigParams {
  const _$_AppConfigParams({required this.baseApiUrl});

  factory _$_AppConfigParams.fromJson(Map<String, dynamic> json) =>
      _$$_AppConfigParamsFromJson(json);

  @override
  final String baseApiUrl;

  @override
  String toString() {
    return 'AppConfigParams(baseApiUrl: $baseApiUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppConfigParams &&
            const DeepCollectionEquality()
                .equals(other.baseApiUrl, baseApiUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(baseApiUrl));

  @JsonKey(ignore: true)
  @override
  _$$_AppConfigParamsCopyWith<_$_AppConfigParams> get copyWith =>
      __$$_AppConfigParamsCopyWithImpl<_$_AppConfigParams>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppConfigParamsToJson(
      this,
    );
  }
}

abstract class _AppConfigParams implements AppConfigParams {
  const factory _AppConfigParams({required final String baseApiUrl}) =
      _$_AppConfigParams;

  factory _AppConfigParams.fromJson(Map<String, dynamic> json) =
      _$_AppConfigParams.fromJson;

  @override
  String get baseApiUrl;
  @override
  @JsonKey(ignore: true)
  _$$_AppConfigParamsCopyWith<_$_AppConfigParams> get copyWith =>
      throw _privateConstructorUsedError;
}
