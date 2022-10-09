// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'loader_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoaderState {
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoaderStateCopyWith<LoaderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoaderStateCopyWith<$Res> {
  factory $LoaderStateCopyWith(
          LoaderState value, $Res Function(LoaderState) then) =
      _$LoaderStateCopyWithImpl<$Res>;
  $Res call({bool isLoading});
}

/// @nodoc
class _$LoaderStateCopyWithImpl<$Res> implements $LoaderStateCopyWith<$Res> {
  _$LoaderStateCopyWithImpl(this._value, this._then);

  final LoaderState _value;
  // ignore: unused_field
  final $Res Function(LoaderState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_LoaderStateCopyWith<$Res>
    implements $LoaderStateCopyWith<$Res> {
  factory _$$_LoaderStateCopyWith(
          _$_LoaderState value, $Res Function(_$_LoaderState) then) =
      __$$_LoaderStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading});
}

/// @nodoc
class __$$_LoaderStateCopyWithImpl<$Res> extends _$LoaderStateCopyWithImpl<$Res>
    implements _$$_LoaderStateCopyWith<$Res> {
  __$$_LoaderStateCopyWithImpl(
      _$_LoaderState _value, $Res Function(_$_LoaderState) _then)
      : super(_value, (v) => _then(v as _$_LoaderState));

  @override
  _$_LoaderState get _value => super._value as _$_LoaderState;

  @override
  $Res call({
    Object? isLoading = freezed,
  }) {
    return _then(_$_LoaderState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LoaderState implements _LoaderState {
  const _$_LoaderState({required this.isLoading});

  @override
  final bool isLoading;

  @override
  String toString() {
    return 'LoaderState(isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoaderState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isLoading));

  @JsonKey(ignore: true)
  @override
  _$$_LoaderStateCopyWith<_$_LoaderState> get copyWith =>
      __$$_LoaderStateCopyWithImpl<_$_LoaderState>(this, _$identity);
}

abstract class _LoaderState implements LoaderState {
  const factory _LoaderState({required final bool isLoading}) = _$_LoaderState;

  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_LoaderStateCopyWith<_$_LoaderState> get copyWith =>
      throw _privateConstructorUsedError;
}
