import 'package:app/modules/onboarding/presentation/blocs/onboarded/set/onboarded_set_cubit.dart';
import 'package:core/base/presentation/ui/widgets/base_widget_stateless.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnBoardingActionsSkipWidget extends BaseStatelessWidget {
  const OnBoardingActionsSkipWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text(
        'Let\'s go right away!',
        style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
      ),
      onPressed: () => {
        context.read<OnBoardedSetCubit>().setOnBoarded(true)
      },
    );
  }
}