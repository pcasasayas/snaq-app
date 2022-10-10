import 'package:freezed_annotation/freezed_annotation.dart';

part 'nutrition_value_model.freezed.dart';

@freezed
class NutritionValueModel with _$NutritionValueModel {
  const factory NutritionValueModel({
    required String nameAbbreviation,
    required String unitAbbreviation,
    required int value,
    required double valueWithPrecision,
  }) = _NutritionValueModel;
}