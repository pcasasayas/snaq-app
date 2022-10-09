import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarded_get_state.freezed.dart';

@freezed
class OnBoardedGetState with _$OnBoardedGetState {
  const factory OnBoardedGetState({
    @Default(false) bool onBoarded,
  }) = _OnBoardedGetState;
}
