import 'package:core/base/presentation/ui/widgets/base_widget_stateless.dart';
import 'package:flutter/material.dart';

class MealEmptyCardWidget extends BaseStatelessWidget {
  const MealEmptyCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ClipRRect(
      borderRadius: BorderRadius.circular(14),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: theme.backgroundColor,
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 2),
              blurRadius: 26,
              color: Colors.black.withOpacity(0.08),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Center(
            child: Text(
              'There are no more meals to discover',
              style: theme.textTheme.headline6!.copyWith(
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}