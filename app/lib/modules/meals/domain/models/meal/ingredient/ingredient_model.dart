import 'package:app/modules/meals/domain/models/nutrition/nutrition_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ingredient_model.freezed.dart';

@freezed
class IngredientModel with _$IngredientModel {
  // Added constructor. Must not have any parameter
  const IngredientModel._();

  const factory IngredientModel({
    required String name,
    required NutritionModel nutrition,
  }) = _IngredientModel;
}