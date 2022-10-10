import 'package:app/modules/meals/presentation/blocs/getdetail/meal_getdetail_bloc.dart';
import 'package:app/modules/meals/presentation/blocs/getdetail/meal_getdetail_state.dart';
import 'package:core/base/presentation/bloc/base_state.dart';
import 'package:core/base/presentation/ui/widgets/base_blocbuilder.dart';
import 'package:core/base/presentation/ui/widgets/base_widget_stateless_blocbuilder.dart';
import 'package:flutter/material.dart';
import 'package:formz/formz.dart';

import '../../../../domain/models/meal/detail/meal_detail_model.dart';


class MealDetailProviderWidget extends BaseWidgetStatelessBlocBuilder<MealGetDetailCubit, MealGetDetailState> {
  MealDetailProviderWidget({
    super.key,
    required this.detailBuilder,
  });

  final Widget Function(MealDetailModel) detailBuilder;

  @override
  bool buildWhen(ResultState<MealGetDetailState> previous, ResultState<MealGetDetailState> current) {
    return (current.status != previous.status) && 
      (
        current.status == FormzStatus.submissionInProgress ||
        current.status == FormzStatus.submissionSuccess || 
        current.status == FormzStatus.submissionFailure
      );
  }

  @override
  StateBuilder<MealGetDetailState> get stateBuilderIdle => (context, state) {
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
  StateBuilder<MealGetDetailState> get stateBuilderLoading => (context, state) {
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
  StateBuilder<MealGetDetailState> get stateBuilderSuccess => (context, state) {
    if (state.data.mealDetail == null) return const SizedBox();
    return detailBuilder(state.data.mealDetail!);
  };

  @override
  StateBuilder<MealGetDetailState> get stateBuilderError => (BuildContext context, ResultState<MealGetDetailState> state) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      child: const Text('There was an error, try again later'),
    );
  };
}