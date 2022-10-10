import 'package:app/modules/meals/domain/usecases/getAll/meals_get_all_usecase.dart';
import 'package:core/base/domain/entities/exception_model.dart';
import 'package:core/base/presentation/bloc/base_state.dart';
import 'package:core/loading/bloc/loader_cubit.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../data/exceptions/meals_exceptions.dart';
import '../../../domain/usecases/getAll/meals_get_all_usecase_params.dart';
import 'meals_getall_state.dart';

@injectable
class MealsGetAllCubit extends Cubit<ResultState<MealsGetAllState>> {
  MealsGetAllCubit(
    @factoryParam this._loaderCubit,
    this.mealsGetAllUseCase,
  ) : super(ResultState.idle(data: const MealsGetAllState())) {
    getAllMeals();
  }

  final LoaderCubit? _loaderCubit;

  final MealsGetAllUseCase mealsGetAllUseCase;

  Future<void> getAllMeals() async {
    emit(state.loading() as ResultState<MealsGetAllState>);
    _loaderCubit?.showLoader();
    try {
      final result = await mealsGetAllUseCase.execute(MealsGetAllUseCaseParams(
        offset: state.data.offset,
        limit: state.data.limit
      ));
      result.fold(
        (error) => emit(state.error(exception: error) as ResultState<MealsGetAllState>),
        (meals) => emit(state.success(
          data: state.data.copyWith(meals: meals),
        ) as ResultState<MealsGetAllState>),
      );
      _loaderCubit?.hideLoader();
    } on Exception catch (_) {
      emit(state.error(exception: ExceptionModel(
        textKey: MealsExceptions.getErrorKey(
          const MealsExceptions.unexpectedError()
        )
      )) as ResultState<MealsGetAllState>);
      _loaderCubit?.hideLoader();
    }
  }
}
