import 'package:app/modules/meals/domain/models/meal/meal_model.dart';
import 'package:app/modules/meals/domain/models/meal/status/meal_status_model.dart';
import 'package:core/base/domain/entities/exception_model.dart';
import 'package:core/base/presentation/bloc/base_state.dart';
import 'package:core/loading/bloc/loader_cubit.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../data/exceptions/meals_exceptions.dart';
import '../../../domain/usecases/setStatus/meals_set_status_usecase.dart';
import '../../../domain/usecases/setStatus/meals_set_status_usecase_params.dart';

@injectable
class MealsSetStatusCubit extends Cubit<ResultState<void>> {
  MealsSetStatusCubit(
    @factoryParam this._loaderCubit,
    this.mealsSetStatusUseCase,
  ) : super(ResultState.idle(data: null));

  final LoaderCubit? _loaderCubit;

  final MealsSetStatusUseCase mealsSetStatusUseCase;

  Future<void> setMealStatus(MealModel meal, MealStatusModel status) async {
    emit(state.loading());
    _loaderCubit?.showLoader();
    try {
      final result = await mealsSetStatusUseCase.execute(
        MealsSetStatusUseCaseParams(
          id: meal.id,
          newStatus: status,
        )
      );
      result.fold(
        (error) => emit(state.error(exception: error)),
        (meals) => emit(state.successNoData()),
      );
      _loaderCubit?.hideLoader();
    } on Exception catch (_) {
      emit(state.error(exception: ExceptionModel(
        textKey: MealsExceptions.getErrorKey(
          const MealsExceptions.unexpectedError()
        )
      )));
      _loaderCubit?.hideLoader();
    }
  }
}
