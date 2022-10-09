import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

import '../../bloc/base_state.dart';

typedef StateListener<G> = void Function(BuildContext context, ResultState<G> data);

mixin BaseBlocListener<T extends Cubit<ResultState<G>>, G> {

  bool listenWhen(ResultState<G> previous, ResultState<G> current);

  void listener(BuildContext context, ResultState<G> state) {
    StateListener<G>? listener;
    switch (state.status) {
      case FormzStatus.invalid:
        listener = stateListenerInvalid;
        break;
      case FormzStatus.pure:
        listener = stateListenerPure;
        break;
      case FormzStatus.submissionFailure:
        listener = stateListenerError;
        break;
      case FormzStatus.submissionInProgress:
        listener = stateListenerLoading;
        break;
      case FormzStatus.submissionSuccess:
        listener = stateListenerSuccess;
        break;
      case FormzStatus.valid:
        listener = stateListenerValid;
        break;
      case FormzStatus.submissionCanceled:
        listener = stateListenerCanceled;
        break;
    }
    return _listen(listener, context, state);
  }

  void _listen(StateListener<G>? stateListener, BuildContext context, ResultState<G> state) {
    return stateListener != null ?
      stateListener.call(context, state) :
      stateListenerIdle?.call(context, state);
  }

  final StateListener<G>? stateListenerIdle = null;
  final StateListener<G>? stateListenerInvalid = null;
  final StateListener<G>? stateListenerValid = null;
  final StateListener<G>? stateListenerPure = null;
  final StateListener<G>? stateListenerLoading = null;
  final StateListener<G>? stateListenerSuccess = null;
  final StateListener<G>? stateListenerError = null;
  final StateListener<G>? stateListenerCanceled = null;
}