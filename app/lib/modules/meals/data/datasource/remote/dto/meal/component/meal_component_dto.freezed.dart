// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'meal_component_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MealComponentDTO _$MealComponentDTOFromJson(Map<String, dynamic> json) {
  return _MealComponentDTO.fromJson(json);
}

/// @nodoc
mixin _$MealComponentDTO {
  IngredientDTO? get mainIngredient => throw _privateConstructorUsedError;
  List<IngredientDTO>? get supplementaryIngredients =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MealComponentDTOCopyWith<MealComponentDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealComponentDTOCopyWith<$Res> {
  factory $MealComponentDTOCopyWith(
          MealComponentDTO value, $Res Function(MealComponentDTO) then) =
      _$MealComponentDTOCopyWithImpl<$Res>;
  $Res call(
      {IngredientDTO? mainIngredient,
      List<IngredientDTO>? supplementaryIngredients});

  $IngredientDTOCopyWith<$Res>? get mainIngredient;
}

/// @nodoc
class _$MealComponentDTOCopyWithImpl<$Res>
    implements $MealComponentDTOCopyWith<$Res> {
  _$MealComponentDTOCopyWithImpl(this._value, this._then);

  final MealComponentDTO _value;
  // ignore: unused_field
  final $Res Function(MealComponentDTO) _then;

  @override
  $Res call({
    Object? mainIngredient = freezed,
    Object? supplementaryIngredients = freezed,
  }) {
    return _then(_value.copyWith(
      mainIngredient: mainIngredient == freezed
          ? _value.mainIngredient
          : mainIngredient // ignore: cast_nullable_to_non_nullable
              as IngredientDTO?,
      supplementaryIngredients: supplementaryIngredients == freezed
          ? _value.supplementaryIngredients
          : supplementaryIngredients // ignore: cast_nullable_to_non_nullable
              as List<IngredientDTO>?,
    ));
  }

  @override
  $IngredientDTOCopyWith<$Res>? get mainIngredient {
    if (_value.mainIngredient == null) {
      return null;
    }

    return $IngredientDTOCopyWith<$Res>(_value.mainIngredient!, (value) {
      return _then(_value.copyWith(mainIngredient: value));
    });
  }
}

/// @nodoc
abstract class _$$_MealComponentDTOCopyWith<$Res>
    implements $MealComponentDTOCopyWith<$Res> {
  factory _$$_MealComponentDTOCopyWith(
          _$_MealComponentDTO value, $Res Function(_$_MealComponentDTO) then) =
      __$$_MealComponentDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {IngredientDTO? mainIngredient,
      List<IngredientDTO>? supplementaryIngredients});

  @override
  $IngredientDTOCopyWith<$Res>? get mainIngredient;
}

/// @nodoc
class __$$_MealComponentDTOCopyWithImpl<$Res>
    extends _$MealComponentDTOCopyWithImpl<$Res>
    implements _$$_MealComponentDTOCopyWith<$Res> {
  __$$_MealComponentDTOCopyWithImpl(
      _$_MealComponentDTO _value, $Res Function(_$_MealComponentDTO) _then)
      : super(_value, (v) => _then(v as _$_MealComponentDTO));

  @override
  _$_MealComponentDTO get _value => super._value as _$_MealComponentDTO;

  @override
  $Res call({
    Object? mainIngredient = freezed,
    Object? supplementaryIngredients = freezed,
  }) {
    return _then(_$_MealComponentDTO(
      mainIngredient: mainIngredient == freezed
          ? _value.mainIngredient
          : mainIngredient // ignore: cast_nullable_to_non_nullable
              as IngredientDTO?,
      supplementaryIngredients: supplementaryIngredients == freezed
          ? _value._supplementaryIngredients
          : supplementaryIngredients // ignore: cast_nullable_to_non_nullable
              as List<IngredientDTO>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MealComponentDTO implements _MealComponentDTO {
  const _$_MealComponentDTO(
      {this.mainIngredient,
      final List<IngredientDTO>? supplementaryIngredients})
      : _supplementaryIngredients = supplementaryIngredients;

  factory _$_MealComponentDTO.fromJson(Map<String, dynamic> json) =>
      _$$_MealComponentDTOFromJson(json);

  @override
  final IngredientDTO? mainIngredient;
  final List<IngredientDTO>? _supplementaryIngredients;
  @override
  List<IngredientDTO>? get supplementaryIngredients {
    final value = _supplementaryIngredients;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MealComponentDTO(mainIngredient: $mainIngredient, supplementaryIngredients: $supplementaryIngredients)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MealComponentDTO &&
            const DeepCollectionEquality()
                .equals(other.mainIngredient, mainIngredient) &&
            const DeepCollectionEquality().equals(
                other._supplementaryIngredients, _supplementaryIngredients));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(mainIngredient),
      const DeepCollectionEquality().hash(_supplementaryIngredients));

  @JsonKey(ignore: true)
  @override
  _$$_MealComponentDTOCopyWith<_$_MealComponentDTO> get copyWith =>
      __$$_MealComponentDTOCopyWithImpl<_$_MealComponentDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MealComponentDTOToJson(
      this,
    );
  }
}

abstract class _MealComponentDTO implements MealComponentDTO {
  const factory _MealComponentDTO(
          {final IngredientDTO? mainIngredient,
          final List<IngredientDTO>? supplementaryIngredients}) =
      _$_MealComponentDTO;

  factory _MealComponentDTO.fromJson(Map<String, dynamic> json) =
      _$_MealComponentDTO.fromJson;

  @override
  IngredientDTO? get mainIngredient;
  @override
  List<IngredientDTO>? get supplementaryIngredients;
  @override
  @JsonKey(ignore: true)
  _$$_MealComponentDTOCopyWith<_$_MealComponentDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
