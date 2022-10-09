import 'package:core/logger/logger.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Custom [BlocObserver] which observes all bloc and cubit instances.
class SimpleBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object? event) {
    MyLogger.i(
      tag: 'SimpleBlocObserver',
      msg: 'onChange(${bloc.runtimeType}, ${event.toString()})'
    );
    super.onEvent(bloc, event);
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    MyLogger.i(
      tag: 'SimpleBlocObserver',
      msg: 'onChange(${bloc.runtimeType}, $change)'
    );
    super.onChange(bloc, change);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    MyLogger.i(
      tag: 'SimpleBlocObserver',
      msg: 'onChange(${bloc.runtimeType}, ${transition.toString()})'
    );
    super.onTransition(bloc, transition);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    MyLogger.e(
      tag: 'SimpleBlocObserver',
      msg: 'onError(${bloc.runtimeType}, $error, $stackTrace)',
      error: error,
    );
    super.onError(bloc, error, stackTrace);
  }
}