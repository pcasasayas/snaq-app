import 'package:app/modules/meals/domain/models/meal/meal_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/models/meal/detail/meal_detail_model.dart';

part 'meal_getdetail_state.freezed.dart';

@freezed
class MealGetDetailState with _$MealGetDetailState {
  const factory MealGetDetailState({
    required MealModel meal,
    MealDetailModel? mealDetail,
  }) = _MealGetDetailState;
}
