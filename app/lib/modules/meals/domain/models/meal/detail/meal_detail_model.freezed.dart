// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'meal_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MealDetailModel {
  int get id => throw _privateConstructorUsedError;
  String get externalId => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  MealStatusModel get status => throw _privateConstructorUsedError;
  NutritionModel get nutrition => throw _privateConstructorUsedError;
  List<MealComponentModel> get components => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MealDetailModelCopyWith<MealDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealDetailModelCopyWith<$Res> {
  factory $MealDetailModelCopyWith(
          MealDetailModel value, $Res Function(MealDetailModel) then) =
      _$MealDetailModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String externalId,
      String? image,
      MealStatusModel status,
      NutritionModel nutrition,
      List<MealComponentModel> components});

  $NutritionModelCopyWith<$Res> get nutrition;
}

/// @nodoc
class _$MealDetailModelCopyWithImpl<$Res>
    implements $MealDetailModelCopyWith<$Res> {
  _$MealDetailModelCopyWithImpl(this._value, this._then);

  final MealDetailModel _value;
  // ignore: unused_field
  final $Res Function(MealDetailModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? externalId = freezed,
    Object? image = freezed,
    Object? status = freezed,
    Object? nutrition = freezed,
    Object? components = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      externalId: externalId == freezed
          ? _value.externalId
          : externalId // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MealStatusModel,
      nutrition: nutrition == freezed
          ? _value.nutrition
          : nutrition // ignore: cast_nullable_to_non_nullable
              as NutritionModel,
      components: components == freezed
          ? _value.components
          : components // ignore: cast_nullable_to_non_nullable
              as List<MealComponentModel>,
    ));
  }

  @override
  $NutritionModelCopyWith<$Res> get nutrition {
    return $NutritionModelCopyWith<$Res>(_value.nutrition, (value) {
      return _then(_value.copyWith(nutrition: value));
    });
  }
}

/// @nodoc
abstract class _$$_MealDetailModelCopyWith<$Res>
    implements $MealDetailModelCopyWith<$Res> {
  factory _$$_MealDetailModelCopyWith(
          _$_MealDetailModel value, $Res Function(_$_MealDetailModel) then) =
      __$$_MealDetailModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String externalId,
      String? image,
      MealStatusModel status,
      NutritionModel nutrition,
      List<MealComponentModel> components});

  @override
  $NutritionModelCopyWith<$Res> get nutrition;
}

/// @nodoc
class __$$_MealDetailModelCopyWithImpl<$Res>
    extends _$MealDetailModelCopyWithImpl<$Res>
    implements _$$_MealDetailModelCopyWith<$Res> {
  __$$_MealDetailModelCopyWithImpl(
      _$_MealDetailModel _value, $Res Function(_$_MealDetailModel) _then)
      : super(_value, (v) => _then(v as _$_MealDetailModel));

  @override
  _$_MealDetailModel get _value => super._value as _$_MealDetailModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? externalId = freezed,
    Object? image = freezed,
    Object? status = freezed,
    Object? nutrition = freezed,
    Object? components = freezed,
  }) {
    return _then(_$_MealDetailModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      externalId: externalId == freezed
          ? _value.externalId
          : externalId // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MealStatusModel,
      nutrition: nutrition == freezed
          ? _value.nutrition
          : nutrition // ignore: cast_nullable_to_non_nullable
              as NutritionModel,
      components: components == freezed
          ? _value._components
          : components // ignore: cast_nullable_to_non_nullable
              as List<MealComponentModel>,
    ));
  }
}

/// @nodoc

class _$_MealDetailModel extends _MealDetailModel {
  const _$_MealDetailModel(
      {required this.id,
      required this.externalId,
      this.image,
      required this.status,
      required this.nutrition,
      required final List<MealComponentModel> components})
      : _components = components,
        super._();

  @override
  final int id;
  @override
  final String externalId;
  @override
  final String? image;
  @override
  final MealStatusModel status;
  @override
  final NutritionModel nutrition;
  final List<MealComponentModel> _components;
  @override
  List<MealComponentModel> get components {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_components);
  }

  @override
  String toString() {
    return 'MealDetailModel(id: $id, externalId: $externalId, image: $image, status: $status, nutrition: $nutrition, components: $components)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MealDetailModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.externalId, externalId) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.nutrition, nutrition) &&
            const DeepCollectionEquality()
                .equals(other._components, _components));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(externalId),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(nutrition),
      const DeepCollectionEquality().hash(_components));

  @JsonKey(ignore: true)
  @override
  _$$_MealDetailModelCopyWith<_$_MealDetailModel> get copyWith =>
      __$$_MealDetailModelCopyWithImpl<_$_MealDetailModel>(this, _$identity);
}

abstract class _MealDetailModel extends MealDetailModel {
  const factory _MealDetailModel(
      {required final int id,
      required final String externalId,
      final String? image,
      required final MealStatusModel status,
      required final NutritionModel nutrition,
      required final List<MealComponentModel> components}) = _$_MealDetailModel;
  const _MealDetailModel._() : super._();

  @override
  int get id;
  @override
  String get externalId;
  @override
  String? get image;
  @override
  MealStatusModel get status;
  @override
  NutritionModel get nutrition;
  @override
  List<MealComponentModel> get components;
  @override
  @JsonKey(ignore: true)
  _$$_MealDetailModelCopyWith<_$_MealDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}
