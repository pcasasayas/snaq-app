import 'package:app/modules/meals/data/datasource/remote/dto/ingredient/ingredient_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'meal_component_dto.freezed.dart';
part 'meal_component_dto.g.dart';

@freezed
class MealComponentDTO with _$MealComponentDTO {
  const factory MealComponentDTO({
    IngredientDTO? mainIngredient,
    List<IngredientDTO>? supplementaryIngredients,
  }) = _MealComponentDTO;

  factory MealComponentDTO.fromJson(Map<String, Object?> json)
      => _$MealComponentDTOFromJson(json);
}