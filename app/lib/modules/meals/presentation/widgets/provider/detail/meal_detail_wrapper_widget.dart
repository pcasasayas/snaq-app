import 'package:app/modules/meals/domain/models/meal/meal_model.dart';
import 'package:app/modules/meals/presentation/blocs/getdetail/meal_getdetail_bloc.dart';
import 'package:core/base/presentation/ui/widgets/base_widget_stateless.dart';
import 'package:core/loading/bloc/loader_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';


class MealDetailWrapperWidget extends BaseStatelessWidget {
  const MealDetailWrapperWidget({
    super.key,
    required this.meal,
    required this.child,
  });

  final MealModel meal;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MealGetDetailCubit>(
      create: (context) => GetIt.instance<MealGetDetailCubit>(
        param1: GetIt.instance<LoaderCubit>(),
        param2: meal,
      ),
      child: child
    );
  }
}