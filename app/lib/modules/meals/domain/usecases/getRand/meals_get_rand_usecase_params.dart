import 'package:freezed_annotation/freezed_annotation.dart';

part 'meals_get_rand_usecase_params.freezed.dart';

@freezed
class MealsGetRandUseCaseParams with _$MealsGetRandUseCaseParams {
  const factory MealsGetRandUseCaseParams({
    required List<int> exclude,
  }) = _MealsGetRandUseCaseParams;
}