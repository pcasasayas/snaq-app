import 'package:app/modules/meals/presentation/blocs/getnotdone/meals_getnotdone_bloc.dart';
import 'package:core/base/presentation/ui/widgets/base_widget_stateless.dart';
import 'package:core/loading/bloc/loader_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class MealsNotDoneWrapperWidget extends BaseStatelessWidget {
  const MealsNotDoneWrapperWidget({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MealsGetNotDoneCubit>(
      create: (context) => GetIt.instance<MealsGetNotDoneCubit>(
        param1: GetIt.instance<LoaderCubit>(), 
      ),
      child: child
    );
  }
}