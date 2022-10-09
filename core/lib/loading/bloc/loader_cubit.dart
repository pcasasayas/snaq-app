import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'loader_state.dart';

@injectable
class LoaderCubit extends Cubit<LoaderState> {
  LoaderCubit() : super(const LoaderState(isLoading: false));

  Future<void> showLoader() async {
    emit(state.copyWith(isLoading: true));
  }

  Future<void> hideLoader() async {
    emit(state.copyWith(isLoading: false));
  }
}
