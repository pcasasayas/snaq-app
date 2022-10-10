// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'meal_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MealDTO _$MealDTOFromJson(Map<String, dynamic> json) {
  return _MealDTO.fromJson(json);
}

/// @nodoc
mixin _$MealDTO {
  String get id => throw _privateConstructorUsedError;
  String get created => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  NutritionDTO get nutrition => throw _privateConstructorUsedError;
  List<MealComponentDTO> get mealComponents =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MealDTOCopyWith<MealDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealDTOCopyWith<$Res> {
  factory $MealDTOCopyWith(MealDTO value, $Res Function(MealDTO) then) =
      _$MealDTOCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String created,
      String image,
      NutritionDTO nutrition,
      List<MealComponentDTO> mealComponents});

  $NutritionDTOCopyWith<$Res> get nutrition;
}

/// @nodoc
class _$MealDTOCopyWithImpl<$Res> implements $MealDTOCopyWith<$Res> {
  _$MealDTOCopyWithImpl(this._value, this._then);

  final MealDTO _value;
  // ignore: unused_field
  final $Res Function(MealDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? created = freezed,
    Object? image = freezed,
    Object? nutrition = freezed,
    Object? mealComponents = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      nutrition: nutrition == freezed
          ? _value.nutrition
          : nutrition // ignore: cast_nullable_to_non_nullable
              as NutritionDTO,
      mealComponents: mealComponents == freezed
          ? _value.mealComponents
          : mealComponents // ignore: cast_nullable_to_non_nullable
              as List<MealComponentDTO>,
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
abstract class _$$_MealDTOCopyWith<$Res> implements $MealDTOCopyWith<$Res> {
  factory _$$_MealDTOCopyWith(
          _$_MealDTO value, $Res Function(_$_MealDTO) then) =
      __$$_MealDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String created,
      String image,
      NutritionDTO nutrition,
      List<MealComponentDTO> mealComponents});

  @override
  $NutritionDTOCopyWith<$Res> get nutrition;
}

/// @nodoc
class __$$_MealDTOCopyWithImpl<$Res> extends _$MealDTOCopyWithImpl<$Res>
    implements _$$_MealDTOCopyWith<$Res> {
  __$$_MealDTOCopyWithImpl(_$_MealDTO _value, $Res Function(_$_MealDTO) _then)
      : super(_value, (v) => _then(v as _$_MealDTO));

  @override
  _$_MealDTO get _value => super._value as _$_MealDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? created = freezed,
    Object? image = freezed,
    Object? nutrition = freezed,
    Object? mealComponents = freezed,
  }) {
    return _then(_$_MealDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      nutrition: nutrition == freezed
          ? _value.nutrition
          : nutrition // ignore: cast_nullable_to_non_nullable
              as NutritionDTO,
      mealComponents: mealComponents == freezed
          ? _value._mealComponents
          : mealComponents // ignore: cast_nullable_to_non_nullable
              as List<MealComponentDTO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MealDTO implements _MealDTO {
  const _$_MealDTO(
      {required this.id,
      required this.created,
      required this.image,
      required this.nutrition,
      required final List<MealComponentDTO> mealComponents})
      : _mealComponents = mealComponents;

  factory _$_MealDTO.fromJson(Map<String, dynamic> json) =>
      _$$_MealDTOFromJson(json);

  @override
  final String id;
  @override
  final String created;
  @override
  final String image;
  @override
  final NutritionDTO nutrition;
  final List<MealComponentDTO> _mealComponents;
  @override
  List<MealComponentDTO> get mealComponents {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mealComponents);
  }

  @override
  String toString() {
    return 'MealDTO(id: $id, created: $created, image: $image, nutrition: $nutrition, mealComponents: $mealComponents)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MealDTO &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.created, created) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.nutrition, nutrition) &&
            const DeepCollectionEquality()
                .equals(other._mealComponents, _mealComponents));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(created),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(nutrition),
      const DeepCollectionEquality().hash(_mealComponents));

  @JsonKey(ignore: true)
  @override
  _$$_MealDTOCopyWith<_$_MealDTO> get copyWith =>
      __$$_MealDTOCopyWithImpl<_$_MealDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MealDTOToJson(
      this,
    );
  }
}

abstract class _MealDTO implements MealDTO {
  const factory _MealDTO(
      {required final String id,
      required final String created,
      required final String image,
      required final NutritionDTO nutrition,
      required final List<MealComponentDTO> mealComponents}) = _$_MealDTO;

  factory _MealDTO.fromJson(Map<String, dynamic> json) = _$_MealDTO.fromJson;

  @override
  String get id;
  @override
  String get created;
  @override
  String get image;
  @override
  NutritionDTO get nutrition;
  @override
  List<MealComponentDTO> get mealComponents;
  @override
  @JsonKey(ignore: true)
  _$$_MealDTOCopyWith<_$_MealDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
