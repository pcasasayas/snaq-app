
import 'package:core/base/presentation/ui/widgets/base_widget_stateless.dart';
import 'package:flutter/material.dart';

class MealIngredientsNameInfoWidget extends BaseStatelessWidget {
  const MealIngredientsNameInfoWidget({
    Key? key,
    this.ingredients = const []
  }) : super(key: key);

  final List<String> ingredients;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (var ingredient in ingredients)
          if (ingredient.isNotEmpty)
            ...[
              _buildIngredient(context, ingredient),
              const SizedBox(height: 4.0,)
            ]
      ],
    );
  }

  Widget _buildIngredient(BuildContext context, String ingredient) {
    return Text(
      ingredient,
      style: Theme.of(context).textTheme.bodyText1,
    );
  }
}