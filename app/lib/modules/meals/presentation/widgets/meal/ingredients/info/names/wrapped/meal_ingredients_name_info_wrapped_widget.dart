
import 'package:core/base/presentation/ui/widgets/base_widget_stateless.dart';
import 'package:flutter/material.dart';

class MealIngredientsNameInfoWrappedWidget extends BaseStatelessWidget {
  const MealIngredientsNameInfoWrappedWidget({
    Key? key,
    this.ingredients = const []
  }) : super(key: key);

  final List<String> ingredients;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        for (var ingredient in ingredients)
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