
import 'package:app/modules/meals/presentation/widgets/meal/swipeable/actions/dislike/meals_action_dislike_widget.dart';
import 'package:app/modules/meals/presentation/widgets/meal/swipeable/actions/like/meals_action_like_widget.dart';
import 'package:core/base/presentation/ui/widgets/base_widget_stateless.dart';
import 'package:flutter/material.dart';

import 'list/meals_action_list_widget.dart';

class MealsSwipeableActionsWidget extends BaseStatelessWidget {
  const MealsSwipeableActionsWidget({
    Key? key,
    required this.onDislikeClicked,
    required this.onListClicked,
    required this.onLikeClicked,
  }) : super(key: key);

  final Function() onDislikeClicked;
  final Function() onListClicked;
  final Function() onLikeClicked;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MealsActionDislikeWidget(onDislikeClicked: onDislikeClicked),
              MealsActionListWidget(onListClicked: onListClicked),
              MealsActionLikeWidget(onLikeClicked: onLikeClicked)
            ]
          )
      )
    );
  }
}