import 'package:app/modules/meals/domain/models/meal/meal_model.dart';
import 'package:app/modules/meals/presentation/widgets/detail/meal_detail_widget.dart';
import 'package:core/base/presentation/ui/pages/base_page_stateless.dart';
import 'package:flutter/material.dart';
import 'package:pallete/appbar/appbar_outlined_widget.dart';


class DetailPage extends BasePageStateless {
  const DetailPage({
    super.key,
    required this.meal,
  });

  final MealModel meal;

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) => const AppbarOutlinedWidget(
    title: 'Details',
  );

  @override
  Widget buildBody(BuildContext context) {
    return Stack(
      children: [ 
        Positioned.fill(
          child: SingleChildScrollView(
            child: MealDetailWidget(
              meal: meal,
            ),
          ),
        )
      ]
    );
  }
}