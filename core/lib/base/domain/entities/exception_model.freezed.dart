// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'exception_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExceptionModel {
  String get textKey => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExceptionModelCopyWith<ExceptionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExceptionModelCopyWith<$Res> {
  factory $ExceptionModelCopyWith(
          ExceptionModel value, $Res Function(ExceptionModel) then) =
      _$ExceptionModelCopyWithImpl<$Res>;
  $Res call({String textKey});
}

/// @nodoc
class _$ExceptionModelCopyWithImpl<$Res>
    implements $ExceptionModelCopyWith<$Res> {
  _$ExceptionModelCopyWithImpl(this._value, this._then);

  final ExceptionModel _value;
  // ignore: unused_field
  final $Res Function(ExceptionModel) _then;

  @override
  $Res call({
    Object? textKey = freezed,
  }) {
    return _then(_value.copyWith(
      textKey: textKey == freezed
          ? _value.textKey
          : textKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ExceptionModelCopyWith<$Res>
    implements $ExceptionModelCopyWith<$Res> {
  factory _$$_ExceptionModelCopyWith(
          _$_ExceptionModel value, $Res Function(_$_ExceptionModel) then) =
      __$$_ExceptionModelCopyWithImpl<$Res>;
  @override
  $Res call({String textKey});
}

/// @nodoc
class __$$_ExceptionModelCopyWithImpl<$Res>
    extends _$ExceptionModelCopyWithImpl<$Res>
    implements _$$_ExceptionModelCopyWith<$Res> {
  __$$_ExceptionModelCopyWithImpl(
      _$_ExceptionModel _value, $Res Function(_$_ExceptionModel) _then)
      : super(_value, (v) => _then(v as _$_ExceptionModel));

  @override
  _$_ExceptionModel get _value => super._value as _$_ExceptionModel;

  @override
  $Res call({
    Object? textKey = freezed,
  }) {
    return _then(_$_ExceptionModel(
      textKey: textKey == freezed
          ? _value.textKey
          : textKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ExceptionModel implements _ExceptionModel {
  const _$_ExceptionModel({required this.textKey});

  @override
  final String textKey;

  @override
  String toString() {
    return 'ExceptionModel(textKey: $textKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExceptionModel &&
            const DeepCollectionEquality().equals(other.textKey, textKey));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(textKey));

  @JsonKey(ignore: true)
  @override
  _$$_ExceptionModelCopyWith<_$_ExceptionModel> get copyWith =>
      __$$_ExceptionModelCopyWithImpl<_$_ExceptionModel>(this, _$identity);
}

abstract class _ExceptionModel implements ExceptionModel {
  const factory _ExceptionModel({required final String textKey}) =
      _$_ExceptionModel;

  @override
  String get textKey;
  @override
  @JsonKey(ignore: true)
  _$$_ExceptionModelCopyWith<_$_ExceptionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
