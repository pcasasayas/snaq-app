import '../../domain/entities/exception_model.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_state.freezed.dart';

@freezed
class ResultState<T> with _$ResultState<T> {
  const ResultState._();

  const factory ResultState({
    required T data,
    ExceptionModel? exception,
    required FormzStatus status,
  }) = _ResultState;

  factory ResultState.idle({required T data}) => ResultState(status: FormzStatus.pure, data: data);
  factory ResultState.loading({required T data}) => ResultState(status: FormzStatus.submissionInProgress, data: data);
  factory ResultState.success({required T data}) => ResultState(status: FormzStatus.submissionSuccess, data: data);
  factory ResultState.error({required T data, required ExceptionModel exception}) => ResultState(status: FormzStatus.submissionFailure, data: data, exception: exception);

  ResultState idle() => copyWith(status: FormzStatus.pure);
  ResultState loading() => copyWith(status: FormzStatus.submissionInProgress);
  ResultState loadingWithData({required T data}) => copyWith(data: data, status: FormzStatus.submissionInProgress);
  ResultState update({required T data}) => copyWith(data: data);
  ResultState success({required T data}) => copyWith(data: data, status: FormzStatus.submissionSuccess);
  ResultState successNoData() => copyWith(status: FormzStatus.submissionSuccess);
  ResultState error({required ExceptionModel exception}) => copyWith(exception: exception, status: FormzStatus.submissionFailure);
}


