import 'package:app/modules/meals/domain/models/meal/ingredient/ingredient_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'mealcomponent_model.freezed.dart';

@freezed
class MealComponentModel with _$MealComponentModel {
  // Added constructor. Must not have any parameter
  const MealComponentModel._();

  const factory MealComponentModel({
    required IngredientModel? mainIngredient,
    required List<IngredientModel> supplementaryIngredients,
  }) = _MealComponentModel;

}