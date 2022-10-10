import 'package:app/modules/meals/presentation/blocs/setstatus/meals_setstatus_bloc.dart';
import 'package:core/base/presentation/ui/widgets/base_widget_stateless.dart';
import 'package:core/loading/bloc/loader_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../../domain/models/meal/meal_model.dart';
import 'meals_discovery_view_widget.dart';

class MealsDiscoveryWidget extends BaseStatelessWidget {
  const MealsDiscoveryWidget({
    super.key,
    required this.onMealSelected,
    required this.onListSelected,
  });

  final Function(MealModel) onMealSelected;
  final Function() onListSelected;
  
  @override
  Widget build(BuildContext context) {
    return BlocProvider<MealsSetStatusCubit>(
      create: (context) => GetIt.instance<MealsSetStatusCubit>(
        param1: GetIt.instance<LoaderCubit>(), 
      ),
      child: MealsDiscoveryViewWidget(
        onMealSelected: onMealSelected,
        onListSelected: onListSelected
      )
    );
  }
}