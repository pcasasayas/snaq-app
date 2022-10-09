
import 'package:app/modules/onboarding/presentation/blocs/onboarded/set/onboarded_set_cubit.dart';
import 'package:core/base/presentation/ui/widgets/base_widget_stateless.dart';
import 'package:core/loading/bloc/loader_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'carousel/onboarding_carousel_widget.dart';

class OnBoardingWidget extends BaseStatelessWidget {
  const OnBoardingWidget({
    Key? key,
    this.onIntroEnd,
  }) : super(key: key);

  final Function()? onIntroEnd;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OnBoardedSetCubit>(
      create: (context) => GetIt.instance<OnBoardedSetCubit>(
        param1: GetIt.instance<LoaderCubit>(), 
      ),
      child: OnBoardingCarouselWidget(
        onIntroEnd: onIntroEnd,
      )
    );
  }
}