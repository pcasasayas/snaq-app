import 'package:freezed_annotation/freezed_annotation.dart';

part 'meals_get_usecase_params.freezed.dart';

@freezed
class MealsGetUseCaseParams with _$MealsGetUseCaseParams {
  const factory MealsGetUseCaseParams({
    required int id,
  }) = _MealsGetUseCaseParams;
}