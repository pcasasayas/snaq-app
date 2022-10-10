import 'package:app/modules/meals/domain/usecases/getNotDone/meals_get_notdone_usecase.dart';
import 'package:core/base/domain/entities/exception_model.dart';
import 'package:core/base/presentation/bloc/base_state.dart';
import 'package:core/loading/bloc/loader_cubit.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../data/exceptions/meals_exceptions.dart';
import 'meals_getnotdone_state.dart';

@injectable
class MealsGetNotDoneCubit extends Cubit<ResultState<MealsGetNotDoneState>> {
  MealsGetNotDoneCubit(
    @factoryParam this._loaderCubit,
    this.mealsGetNotDoneUseCase,
  ) : super(ResultState.idle(data: const MealsGetNotDoneState())) {
    getAllMeals();
  }

  final LoaderCubit? _loaderCubit;

  final MealsGetNotDoneUseCase mealsGetNotDoneUseCase;

  Future<void> getAllMeals() async {
    emit(state.loading() as ResultState<MealsGetNotDoneState>);
    _loaderCubit?.showLoader();
    try {
      final result = await mealsGetNotDoneUseCase.execute(null);
      result.fold(
        (error) => emit(state.error(exception: error) as ResultState<MealsGetNotDoneState>),
        (meals) => emit(state.success(
          data: state.data.copyWith(meals: meals),
        ) as ResultState<MealsGetNotDoneState>),
      );
      _loaderCubit?.hideLoader();
    } on Exception catch (_) {
      emit(state.error(exception: ExceptionModel(
        textKey: MealsExceptions.getErrorKey(
          const MealsExceptions.unexpectedError()
        )
      )) as ResultState<MealsGetNotDoneState>);
      _loaderCubit?.hideLoader();
    }
  }
}
