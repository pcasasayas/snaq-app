import 'package:app/modules/onboarding/presentation/widgets/onboarding_widget.dart';
import 'package:core/base/presentation/ui/pages/base_page_stateless.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../navigation/routers/app_router.dart';

class OnBoardingPage extends BasePageStateless {
  OnBoardingPage({super.key});

  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd() {
    GetIt.instance<AppRouter>().replace(const DiscoveryRoute());
  }

  @override
  Widget buildBody(BuildContext context) {
    return OnBoardingWidget(onIntroEnd: _onIntroEnd);
  }

}