import 'package:core/base/presentation/bloc/base_state.dart';
import 'package:core/base/presentation/ui/widgets/base_blocbuilder.dart';
import 'package:core/base/presentation/ui/widgets/base_widget_stateless_blocbuilder.dart';
import 'package:flutter/material.dart';
import 'package:formz/formz.dart';

import '../../../../domain/models/meal/meal_model.dart';
import '../../../blocs/getall/meals_getall_bloc.dart';
import '../../../blocs/getall/meals_getall_state.dart';


class MealsAllProviderWidget extends BaseWidgetStatelessBlocBuilder<MealsGetAllCubit, MealsGetAllState> {
  MealsAllProviderWidget({
    super.key,
    required this.listBuilder,
  });

  final Widget Function(List<MealModel>) listBuilder;

  @override
  bool buildWhen(ResultState<MealsGetAllState> previous, ResultState<MealsGetAllState> current) {
    return (current.status != previous.status) && 
      (
        current.status == FormzStatus.submissionInProgress ||
        current.status == FormzStatus.submissionSuccess || 
        current.status == FormzStatus.submissionFailure
      );
  }

  @override
  StateBuilder<MealsGetAllState> get stateBuilderIdle => (context, state) {
    return Stack(
      alignment: Alignment.center,
      children: const [SizedBox(
        width: 50,
        height: 50,
        child: CircularProgressIndicator()
      )]
    );
  };

  @override
  StateBuilder<MealsGetAllState> get stateBuilderLoading => (context, state) {
    return Stack(
      alignment: Alignment.center,
      children: const [SizedBox(
        width: 50,
        height: 50,
        child: CircularProgressIndicator()
      )]
    );
  };
  
  @override
  StateBuilder<MealsGetAllState> get stateBuilderSuccess => (context, state) {
    return listBuilder(state.data.meals);
  };

  @override
  StateBuilder<MealsGetAllState> get stateBuilderError => (BuildContext context, ResultState<MealsGetAllState> state) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      child: const Text('There was an error, try again later'),
    );
  };
}