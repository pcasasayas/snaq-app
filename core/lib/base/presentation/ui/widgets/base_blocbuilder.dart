import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

import '../../bloc/base_state.dart';

typedef StateBuilder<G> = Widget Function(BuildContext context, ResultState<G> data);

mixin BaseBlocBuilder<T extends Cubit<ResultState<G>>, G> {

  bool buildWhen(ResultState<G> previous, ResultState<G> current);

  Widget builder(BuildContext context, ResultState<G> state) {
    StateBuilder<G>? builder;
    switch (state.status) {
      case FormzStatus.invalid:
        builder = stateBuilderInvalid;
        break;
      case FormzStatus.pure:
        builder = stateBuilderPure;
        break;
      case FormzStatus.submissionFailure:
        builder = stateBuilderError;
        break;
      case FormzStatus.submissionInProgress:
        builder = stateBuilderLoading;
        break;
      case FormzStatus.submissionSuccess:
        builder = stateBuilderSuccess;
        break;
      case FormzStatus.valid:
        builder = stateBuilderValid;
        break;
      case FormzStatus.submissionCanceled:
        builder = stateBuilderCanceled;
        break;
    }
    return _build(builder, context, state);
  }

  Widget _build(StateBuilder<G>? stateBuilder, BuildContext context, ResultState<G> state) {
    return stateBuilder != null ?
      stateBuilder.call(context, state) :
      stateBuilderIdle.call(context, state);
  }

  abstract final StateBuilder<G> stateBuilderIdle;
  final StateBuilder<G>? stateBuilderInvalid = null;
  final StateBuilder<G>? stateBuilderValid = null;
  final StateBuilder<G>? stateBuilderPure = null;
  final StateBuilder<G>? stateBuilderLoading = null;
  final StateBuilder<G>? stateBuilderSuccess = null;
  final StateBuilder<G>? stateBuilderError = null;
  final StateBuilder<G>? stateBuilderCanceled = null;
}