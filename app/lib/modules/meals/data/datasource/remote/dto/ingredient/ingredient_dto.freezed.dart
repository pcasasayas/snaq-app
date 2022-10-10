// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ingredient_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IngredientDTO _$IngredientDTOFromJson(Map<String, dynamic> json) {
  return _IngredientDTO.fromJson(json);
}

/// @nodoc
mixin _$IngredientDTO {
  String get name => throw _privateConstructorUsedError;
  NutritionDTO get nutrition => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IngredientDTOCopyWith<IngredientDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IngredientDTOCopyWith<$Res> {
  factory $IngredientDTOCopyWith(
          IngredientDTO value, $Res Function(IngredientDTO) then) =
      _$IngredientDTOCopyWithImpl<$Res>;
  $Res call({String name, NutritionDTO nutrition});

  $NutritionDTOCopyWith<$Res> get nutrition;
}

/// @nodoc
class _$IngredientDTOCopyWithImpl<$Res>
    implements $IngredientDTOCopyWith<$Res> {
  _$IngredientDTOCopyWithImpl(this._value, this._then);

  final IngredientDTO _value;
  // ignore: unused_field
  final $Res Function(IngredientDTO) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? nutrition = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nutrition: nutrition == freezed
          ? _value.nutrition
          : nutrition // ignore: cast_nullable_to_non_nullable
              as NutritionDTO,
    ));
  }

  @override
  $NutritionDTOCopyWith<$Res> get nutrition {
    return $NutritionDTOCopyWith<$Res>(_value.nutrition, (value) {
      return _then(_value.copyWith(nutrition: value));
    });
  }
}

/// @nodoc
abstract class _$$_IngredientDTOCopyWith<$Res>
    implements $IngredientDTOCopyWith<$Res> {
  factory _$$_IngredientDTOCopyWith(
          _$_IngredientDTO value, $Res Function(_$_IngredientDTO) then) =
      __$$_IngredientDTOCopyWithImpl<$Res>;
  @override
  $Res call({String name, NutritionDTO nutrition});

  @override
  $NutritionDTOCopyWith<$Res> get nutrition;
}

/// @nodoc
class __$$_IngredientDTOCopyWithImpl<$Res>
    extends _$IngredientDTOCopyWithImpl<$Res>
    implements _$$_IngredientDTOCopyWith<$Res> {
  __$$_IngredientDTOCopyWithImpl(
      _$_IngredientDTO _value, $Res Function(_$_IngredientDTO) _then)
      : super(_value, (v) => _then(v as _$_IngredientDTO));

  @override
  _$_IngredientDTO get _value => super._value as _$_IngredientDTO;

  @override
  $Res call({
    Object? name = freezed,
    Object? nutrition = freezed,
  }) {
    return _then(_$_IngredientDTO(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nutrition: nutrition == freezed
          ? _value.nutrition
          : nutrition // ignore: cast_nullable_to_non_nullable
              as NutritionDTO,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IngredientDTO implements _IngredientDTO {
  const _$_IngredientDTO({required this.name, required this.nutrition});

  factory _$_IngredientDTO.fromJson(Map<String, dynamic> json) =>
      _$$_IngredientDTOFromJson(json);

  @override
  final String name;
  @override
  final NutritionDTO nutrition;

  @override
  String toString() {
    return 'IngredientDTO(name: $name, nutrition: $nutrition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IngredientDTO &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.nutrition, nutrition));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(nutrition));

  @JsonKey(ignore: true)
  @override
  _$$_IngredientDTOCopyWith<_$_IngredientDTO> get copyWith =>
      __$$_IngredientDTOCopyWithImpl<_$_IngredientDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IngredientDTOToJson(
      this,
    );
  }
}

abstract class _IngredientDTO implements IngredientDTO {
  const factory _IngredientDTO(
      {required final String name,
      required final NutritionDTO nutrition}) = _$_IngredientDTO;

  factory _IngredientDTO.fromJson(Map<String, dynamic> json) =
      _$_IngredientDTO.fromJson;

  @override
  String get name;
  @override
  NutritionDTO get nutrition;
  @override
  @JsonKey(ignore: true)
  _$$_IngredientDTOCopyWith<_$_IngredientDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
