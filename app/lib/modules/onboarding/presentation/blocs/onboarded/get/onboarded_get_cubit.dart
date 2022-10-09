import 'package:app/modules/onboarding/domain/usecases/onboarded/get/onboarded_get_usecase.dart';
import 'package:app/modules/onboarding/presentation/blocs/onboarded/get/onboarded_get_state.dart';
import 'package:core/base/domain/entities/exception_model.dart';
import 'package:core/base/presentation/bloc/base_state.dart';
import 'package:core/loading/bloc/loader_cubit.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../data/exceptions/onboarding_exceptions.dart';


@injectable
class OnBoardedGetCubit extends Cubit<ResultState<OnBoardedGetState>> {
  OnBoardedGetCubit(
    @factoryParam this._loaderCubit,
    this.onBoardedGetUseCase,
  ) : super(ResultState.idle(data: const OnBoardedGetState())) {
    getOnBoarded();
  }

  final LoaderCubit? _loaderCubit;

  final OnBoardedGetUseCase onBoardedGetUseCase;

  Future<void> getOnBoarded() async {
    emit(state.loading() as ResultState<OnBoardedGetState>);
    _loaderCubit?.showLoader();
    try {
      final result = await onBoardedGetUseCase.execute(null);
      result.fold(
        (error) => emit(state.error(exception: error) as ResultState<OnBoardedGetState>),
        (correct) => emit(state.success(
          data: state.data.copyWith(onBoarded: correct),
        ) as ResultState<OnBoardedGetState>),
      );
      _loaderCubit?.hideLoader();
    } on Exception catch (_) {
      emit(state.error(exception: ExceptionModel(
        textKey: OnBoardingExceptions.getErrorKey(
          const OnBoardingExceptions.unexpectedError()
        )
      )) as ResultState<OnBoardedGetState>);
      _loaderCubit?.hideLoader();
    }
  }
}
