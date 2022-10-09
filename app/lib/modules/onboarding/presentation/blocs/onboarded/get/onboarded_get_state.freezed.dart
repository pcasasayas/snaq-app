// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'onboarded_get_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OnBoardedGetState {
  bool get onBoarded => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OnBoardedGetStateCopyWith<OnBoardedGetState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnBoardedGetStateCopyWith<$Res> {
  factory $OnBoardedGetStateCopyWith(
          OnBoardedGetState value, $Res Function(OnBoardedGetState) then) =
      _$OnBoardedGetStateCopyWithImpl<$Res>;
  $Res call({bool onBoarded});
}

/// @nodoc
class _$OnBoardedGetStateCopyWithImpl<$Res>
    implements $OnBoardedGetStateCopyWith<$Res> {
  _$OnBoardedGetStateCopyWithImpl(this._value, this._then);

  final OnBoardedGetState _value;
  // ignore: unused_field
  final $Res Function(OnBoardedGetState) _then;

  @override
  $Res call({
    Object? onBoarded = freezed,
  }) {
    return _then(_value.copyWith(
      onBoarded: onBoarded == freezed
          ? _value.onBoarded
          : onBoarded // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_OnBoardedGetStateCopyWith<$Res>
    implements $OnBoardedGetStateCopyWith<$Res> {
  factory _$$_OnBoardedGetStateCopyWith(_$_OnBoardedGetState value,
          $Res Function(_$_OnBoardedGetState) then) =
      __$$_OnBoardedGetStateCopyWithImpl<$Res>;
  @override
  $Res call({bool onBoarded});
}

/// @nodoc
class __$$_OnBoardedGetStateCopyWithImpl<$Res>
    extends _$OnBoardedGetStateCopyWithImpl<$Res>
    implements _$$_OnBoardedGetStateCopyWith<$Res> {
  __$$_OnBoardedGetStateCopyWithImpl(
      _$_OnBoardedGetState _value, $Res Function(_$_OnBoardedGetState) _then)
      : super(_value, (v) => _then(v as _$_OnBoardedGetState));

  @override
  _$_OnBoardedGetState get _value => super._value as _$_OnBoardedGetState;

  @override
  $Res call({
    Object? onBoarded = freezed,
  }) {
    return _then(_$_OnBoardedGetState(
      onBoarded: onBoarded == freezed
          ? _value.onBoarded
          : onBoarded // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_OnBoardedGetState implements _OnBoardedGetState {
  const _$_OnBoardedGetState({this.onBoarded = false});

  @override
  @JsonKey()
  final bool onBoarded;

  @override
  String toString() {
    return 'OnBoardedGetState(onBoarded: $onBoarded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnBoardedGetState &&
            const DeepCollectionEquality().equals(other.onBoarded, onBoarded));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(onBoarded));

  @JsonKey(ignore: true)
  @override
  _$$_OnBoardedGetStateCopyWith<_$_OnBoardedGetState> get copyWith =>
      __$$_OnBoardedGetStateCopyWithImpl<_$_OnBoardedGetState>(
          this, _$identity);
}

abstract class _OnBoardedGetState implements OnBoardedGetState {
  const factory _OnBoardedGetState({final bool onBoarded}) =
      _$_OnBoardedGetState;

  @override
  bool get onBoarded;
  @override
  @JsonKey(ignore: true)
  _$$_OnBoardedGetStateCopyWith<_$_OnBoardedGetState> get copyWith =>
      throw _privateConstructorUsedError;
}
