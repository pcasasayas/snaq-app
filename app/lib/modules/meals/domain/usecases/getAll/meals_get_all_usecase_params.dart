import 'package:freezed_annotation/freezed_annotation.dart';

part 'meals_get_all_usecase_params.freezed.dart';

@freezed
class MealsGetAllUseCaseParams with _$MealsGetAllUseCaseParams {
  const factory MealsGetAllUseCaseParams({
    required int offset,
    required int limit,
  }) = _MealsGetAllUseCaseParams;
}