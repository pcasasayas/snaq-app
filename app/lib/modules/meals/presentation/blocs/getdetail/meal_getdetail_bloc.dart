import 'package:app/modules/meals/domain/models/meal/meal_model.dart';
import 'package:app/modules/meals/domain/usecases/get/meals_get_usecase.dart';
import 'package:core/base/domain/entities/exception_model.dart';
import 'package:core/base/presentation/bloc/base_state.dart';
import 'package:core/loading/bloc/loader_cubit.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../data/exceptions/meals_exceptions.dart';
import '../../../domain/usecases/get/meals_get_usecase_params.dart';
import 'meal_getdetail_state.dart';

@injectable
class MealGetDetailCubit extends Cubit<ResultState<MealGetDetailState>> {
  MealGetDetailCubit(
    @factoryParam this._loaderCubit,
    @factoryParam MealModel meal,
    this.mealsGetUseCase,
  ) : super(ResultState.idle(data: MealGetDetailState(meal: meal))) {
    getMealDetails();
  }

  final LoaderCubit? _loaderCubit;

  final MealsGetUseCase mealsGetUseCase;

  Future<void> getMealDetails() async {
    emit(state.loading() as ResultState<MealGetDetailState>);
    _loaderCubit?.showLoader();
    try {
      final result = await mealsGetUseCase.execute(MealsGetUseCaseParams(
        id: state.data.meal.id,
      ));
      result.fold(
        (error) => emit(state.error(exception: error) as ResultState<MealGetDetailState>),
        (mealDetail) => emit(state.success(
          data: state.data.copyWith(mealDetail: mealDetail),
        ) as ResultState<MealGetDetailState>),
      );
      _loaderCubit?.hideLoader();
    } on Exception catch (_) {
      emit(state.error(exception: ExceptionModel(
        textKey: MealsExceptions.getErrorKey(
          const MealsExceptions.unexpectedError()
        )
      )) as ResultState<MealGetDetailState>);
      _loaderCubit?.hideLoader();
    }
    
  }
}
