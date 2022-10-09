import 'package:app/modules/onboarding/presentation/blocs/onboarded/get/onboarded_get_cubit.dart';
import 'package:app/modules/onboarding/presentation/widgets/provider/onboarding_consumer_widget.dart';
import 'package:core/base/presentation/ui/widgets/base_widget_stateless.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';


class OnBoardingProviderWidget extends BaseStatelessWidget {
  const OnBoardingProviderWidget({
    required this.child,
    this.onBoardedLoaded,
    super.key
  });

  final Widget child;
  final Function(bool)? onBoardedLoaded;
  
  @override
  Widget build(BuildContext context) {
    return BlocProvider<OnBoardedGetCubit>(
      create: (context) => GetIt.instance<OnBoardedGetCubit>(),
      child: OnBoardingConsumerWidget(
        onBoardedLoaded: onBoardedLoaded,
        child: child,
      )
    );
  }
}