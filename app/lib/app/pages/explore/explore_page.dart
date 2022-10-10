import 'package:core/base/presentation/ui/pages/base_page_stateless.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:pallete/appbar/appbar_outlined_widget.dart';

import '../../../modules/meals/domain/models/meal/meal_model.dart';
import '../../../modules/meals/presentation/widgets/explore/meals_explore_widget.dart';
import '../../navigation/routers/app_router.dart';


class ExplorePage extends BasePageStateless {
  const ExplorePage({
    super.key,
  });
  
  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) => const AppbarOutlinedWidget(
    title: 'Explore',
  );

  @override
  Widget buildBody(BuildContext context) {
    return Stack(
      children: [ 
        Positioned.fill(
          child: MealsExploreWidget(
            onMealSelected: _onMealSelected,
          ),
        )
      ]
    );
  }

  void _onMealSelected(MealModel meal) {
    GetIt.instance<AppRouter>().push(DetailRoute(meal: meal));
  }

}