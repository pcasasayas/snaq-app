import 'package:app/modules/onboarding/data/exceptions/onboarding_exceptions.dart';
import 'package:app/modules/onboarding/domain/usecases/onboarded/set/onboarded_set_usecase.dart';
import 'package:core/base/domain/entities/exception_model.dart';
import 'package:core/base/presentation/bloc/base_state.dart';
import 'package:core/loading/bloc/loader_cubit.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';


@injectable
class OnBoardedSetCubit extends Cubit<ResultState<void>> {
  OnBoardedSetCubit(
    @factoryParam this._loaderCubit,
    this.onBoardedSetUseCase,
  ) : super(ResultState.idle(data: null));

  final LoaderCubit? _loaderCubit;

  final OnBoardedSetUseCase onBoardedSetUseCase;

  Future<void> setOnBoarded(bool onBoarded) async {
    emit(state.loading());
    _loaderCubit?.showLoader();
    try {
      final result = await onBoardedSetUseCase.execute(onBoarded);
      result.fold(
        (error) => emit(state.error(exception: error)),
        (correct) => emit(state.successNoData()),
      );
      _loaderCubit?.hideLoader();
    } on Exception {
      emit(state.error(exception: ExceptionModel(
        textKey: OnBoardingExceptions.getErrorKey(
          const OnBoardingExceptions.unexpectedError()
        )
      )));
      _loaderCubit?.hideLoader();
    }
  }
}
