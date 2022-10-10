import 'package:app/modules/meals/domain/models/meal/meal_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'meals_getall_state.freezed.dart';

@freezed
class MealsGetAllState with _$MealsGetAllState {
  const factory MealsGetAllState({
    @Default(0) int offset,
    @Default(10) int limit,
    @Default([]) List<MealModel> meals,
  }) = _MealsGetAllState;
}
