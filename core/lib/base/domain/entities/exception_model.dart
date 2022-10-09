import 'package:freezed_annotation/freezed_annotation.dart';

part 'exception_model.freezed.dart';

@freezed
class ExceptionModel with _$ExceptionModel {
  const factory ExceptionModel({
    required String textKey,
  }) = _ExceptionModel;
}