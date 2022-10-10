import 'package:cached_network_image/cached_network_image.dart';
import 'package:core/base/presentation/ui/widgets/base_widget_stateless.dart';
import 'package:flutter/material.dart';

import '../../../../../domain/models/meal/meal_model.dart';
import '../../../../../domain/models/meal/status/meal_status_model.dart';
import '../../card/card_label_small.dart';
import '../../ingredients/info/names/meal_ingredients_name_info_widget.dart';

class MealInfoListedWidget extends BaseStatelessWidget {
  const MealInfoListedWidget({
    super.key,
    required this.meal,
    this.onMealSelected,
  });

  final MealModel meal;
  final Function(MealModel)? onMealSelected;

  @override
  Widget build(BuildContext context) {
    return Card(
      borderOnForeground: true,
      clipBehavior: Clip.hardEdge,
      elevation: 2.0,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildImage(),
          const SizedBox(width: 12.0,),
          Expanded(child: _buildIngredients()),
          if (meal.isStatusDone)
            ...[
              _buildStatus(),
              const SizedBox(width: 12.0,),
            ]
        ],
      ),
    );
  }

  Widget _buildImage() {
    return SizedBox(
      height: 140.0,
      width: 160.0,
      child: CachedNetworkImage(
        fit: BoxFit.fitWidth,
        imageUrl: meal.image?? '',
        progressIndicatorBuilder: (context, url, downloadProgress) => SizedBox(
          height: 40.0,
          width: 40.0,
          child: CircularProgressIndicator(value: downloadProgress.progress)
        ),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
    );
  }

  Widget _buildStatus() {
    switch (meal.status) {
      case MealStatusModel.liked: return CardLabelSmall.right();
      case MealStatusModel.disliked: return CardLabelSmall.left();
      default: return CardLabelSmall.right();
    }
  }

  Widget _buildIngredients() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 14.0
      ),
      child: MealIngredientsNameInfoWidget(ingredients: meal.ingredients,),
    );
  }
}