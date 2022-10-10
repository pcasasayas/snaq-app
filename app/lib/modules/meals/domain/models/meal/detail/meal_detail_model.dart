import 'package:app/modules/meals/domain/models/meal/status/meal_status_model.dart';
import 'package:app/modules/meals/domain/models/mealComponent/mealcomponent_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../nutrition/nutrition_model.dart';
import '../ingredient/ingredient_model.dart';

part 'meal_detail_model.freezed.dart';

@freezed
class MealDetailModel with _$MealDetailModel {
  // Added constructor. Must not have any parameter
  const MealDetailModel._();

  const factory MealDetailModel({
    required int id,
    required String externalId,
    String? image,
    required MealStatusModel status,
    required NutritionModel nutrition,
    required List<MealComponentModel> components,
  }) = _MealDetailModel;

  bool get isStatusDone => status == MealStatusModel.liked || status == MealStatusModel.disliked;

  List<IngredientModel> get allIngredients => components.map(
    (component) => [
      component.mainIngredient, 
      ...component.supplementaryIngredients
    ]
  ).expand((element) => element)
  .whereType<IngredientModel>()
  .toList();

  List<IngredientModel> get mainIngredients => components.map(
    (component) => component.mainIngredient
  ).whereType<IngredientModel>()
  .toList();
}