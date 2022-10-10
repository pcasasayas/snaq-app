import 'package:app/modules/meals/domain/models/meal/status/meal_status_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../nutrition/nutrition_model.dart';

part 'meal_model.freezed.dart';

@freezed
class MealModel with _$MealModel {
  // Added constructor. Must not have any parameter
  const MealModel._();

  const factory MealModel({
    required int id,
    required String externalId,
    String? image,
    required MealStatusModel status,
    required NutritionModel nutrition,
    required List<String> ingredients,
  }) = _MealModel;

  bool get isStatusDone => status == MealStatusModel.liked || status == MealStatusModel.disliked;
}