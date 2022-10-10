import 'package:app/modules/meals/domain/models/nutrition/value/nutrition_value_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'nutrition_model.freezed.dart';

@freezed
class NutritionModel with _$NutritionModel {
  const factory NutritionModel({
    required NutritionValueModel carbohydrates,
    required NutritionValueModel fatTotal,
    required NutritionValueModel protein,
    required NutritionValueModel energy,
  }) = _NutritionModel;
}