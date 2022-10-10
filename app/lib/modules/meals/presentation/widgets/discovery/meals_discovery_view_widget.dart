import 'package:app/modules/meals/domain/models/meal/status/meal_status_model.dart';
import 'package:app/modules/meals/presentation/blocs/setstatus/meals_setstatus_bloc.dart';
import 'package:app/modules/meals/presentation/widgets/provider/notdone/meals_notdone_wrapper_widget.dart';
import 'package:app/modules/meals/presentation/widgets/meal/swipeable/actions/meals_swipeable_actions_widget.dart';
import 'package:core/base/presentation/ui/widgets/base_widget_stateless.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:swipable_stack/swipable_stack.dart';

import '../../../domain/models/meal/meal_model.dart';
import 'meals_discovery_stack_widget.dart';

class MealsDiscoveryViewWidget extends BaseStatelessWidget {
  MealsDiscoveryViewWidget({
    super.key,
    required this.onMealSelected,
    required this.onListSelected,
  });

  final Function(MealModel) onMealSelected;
  final Function() onListSelected;

  final SwipableStackController controller = SwipableStackController();
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: MealsNotDoneWrapperWidget(
          child: MealsDiscoveryStackWidget(
            onMealSelected: onMealSelected,
            onMealDislike: onMealDislike,
            onMealLike: onMealLike,
            controller: controller,
          ),
        )),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 12.0
          ),
          child: MealsSwipeableActionsWidget(
            onDislikeClicked: onDislikeClicked,
            onListClicked: onListSelected, 
            onLikeClicked: onLikeClicked
          ),
        )
      ],
    );
  }

  void onDislikeClicked() {
    controller.next(swipeDirection: SwipeDirection.left);
  }

  void onLikeClicked() {
    controller.next(swipeDirection: SwipeDirection.right);
  }

  void onMealDislike(MealModel meal) {
    GetIt.instance<MealsSetStatusCubit>().setMealStatus(
      meal, 
      MealStatusModel.disliked,
    );
  }

  void onMealLike(MealModel meal) {
    GetIt.instance<MealsSetStatusCubit>().setMealStatus(
      meal, 
      MealStatusModel.liked,
    );
  }
}