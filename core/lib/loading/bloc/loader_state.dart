import 'package:freezed_annotation/freezed_annotation.dart';

part 'loader_state.freezed.dart';

@freezed
class LoaderState with _$LoaderState {
  const factory LoaderState({
    required bool isLoading
  }) = _LoaderState;
}
