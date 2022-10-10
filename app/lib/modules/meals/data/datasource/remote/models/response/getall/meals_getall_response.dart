import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../dto/meal/meal_dto.dart';

part 'meals_getall_response.freezed.dart';
part 'meals_getall_response.g.dart';

@freezed
class MealsGetAllResponse with _$MealsGetAllResponse {
  const factory MealsGetAllResponse({
    required List<MealDTO> meals,
  }) = _MealsGetAllResponse;

  factory MealsGetAllResponse.fromJson(Map<String, Object?> json)
      => _$MealsGetAllResponseFromJson(json);
}