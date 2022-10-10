import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/meal/status/meal_status_model.dart';

part 'meals_set_status_usecase_params.freezed.dart';

@freezed
class MealsSetStatusUseCaseParams with _$MealsSetStatusUseCaseParams {
  const factory MealsSetStatusUseCaseParams({
    required int id,
    required MealStatusModel newStatus,
  }) = _MealsGetUseCaseParams;
}