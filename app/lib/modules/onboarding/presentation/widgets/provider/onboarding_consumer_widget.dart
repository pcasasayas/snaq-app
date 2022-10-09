

import 'package:app/modules/onboarding/presentation/blocs/onboarded/get/onboarded_get_cubit.dart';
import 'package:core/base/presentation/bloc/base_state.dart';
import 'package:core/base/presentation/ui/widgets/base_bloclistener.dart';
import 'package:core/base/presentation/ui/widgets/base_widget_stateless_bloclistener.dart';
import 'package:flutter/material.dart';
import 'package:formz/formz.dart';
import 'package:pallete/flashbar/helpers/flashbar_helper.dart';
import 'package:pallete/flashbar/widgets/flashbar_info_widget.dart';

import '../../blocs/onboarded/get/onboarded_get_state.dart';

class OnBoardingConsumerWidget extends BaseWidgetStatelessBlocListener<OnBoardedGetCubit, OnBoardedGetState> {
  OnBoardingConsumerWidget({
    required this.child,
    this.onBoardedLoaded,
    super.key
  });

  final Widget child;
  final Function(bool)? onBoardedLoaded;

  @override
  bool listenWhen(ResultState<void> previous, ResultState<void> current) {
    return current.status.isSubmissionFailure || current.status.isSubmissionSuccess;
  }

  @override
  StateListener<OnBoardedGetState>? get stateListenerError {
    return (context, state) => FlashbarHelper.showFlashbar(
      context, 
      builder: FlashbarInfoWidget.builder,
    );
  }

  @override
  StateListener<OnBoardedGetState>? get stateListenerSuccess {
    return (context, state) {
      onBoardedLoaded?.call(state.data.onBoarded);
    };
  }

  @override
  Widget buildBody(BuildContext context) {
    return child;
  }
}