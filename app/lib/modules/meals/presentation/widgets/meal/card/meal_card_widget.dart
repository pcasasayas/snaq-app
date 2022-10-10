
import 'package:app/modules/meals/domain/models/meal/meal_model.dart';
import 'package:app/modules/meals/presentation/widgets/meal/info/simple/meal_info_simple_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:core/base/presentation/ui/widgets/base_widget_stateless.dart';
import 'package:flutter/material.dart';

class MealCardWidget extends BaseStatelessWidget {
  const MealCardWidget({
    super.key,
    required this.meal,
    required this.onMealSelected,
  });

  final MealModel meal;
  final Function(MealModel) onMealSelected;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ClipRRect(
      borderRadius: BorderRadius.circular(14),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: theme.primaryColor,
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 2),
              blurRadius: 26,
              color: Colors.black.withOpacity(0.08),
            ),
          ],
        ),
        child: Column(
          children: [
            Expanded(child: CachedNetworkImage(
              imageUrl: meal.image?? '',
              progressIndicatorBuilder: (context, url, downloadProgress) => 
                CircularProgressIndicator(value: downloadProgress.progress),
              errorWidget: (context, url, error) => const Icon(Icons.error),
              fit: BoxFit.cover,
            )),
            InkWell(
              onTap: () => onMealSelected(meal),
              child: MealInfoSimpleWidget(
                meal: meal,
              ) 
            ),
          ],
        ),
      ),
    );
  }
}