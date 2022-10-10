import 'package:app/modules/meals/domain/models/meal/meal_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'meals_getnotdone_state.freezed.dart';

@freezed
class MealsGetNotDoneState with _$MealsGetNotDoneState {
  const factory MealsGetNotDoneState({
    @Default(0) int offset,
    @Default(10) int limit,
    @Default([]) List<MealModel> meals,
  }) = _MealsGetNotDoneState;
}
