import 'package:core/base/presentation/ui/pages/base_page_stateless.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get_it/get_it.dart';

import '../../../modules/onboarding/presentation/widgets/provider/onboarding_provider_widget.dart';
import '../../navigation/routers/app_router.dart';

class SplashPage extends BasePageStateless {
  const SplashPage({
    super.key,
  });
  
  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) => AppBar(
    backgroundColor: Colors.black,
    title: const Text("Splash Page"),
  );

  @override
  Widget buildBody(BuildContext context) {
    return SafeArea(
      child: OnBoardingProviderWidget(
        onBoardedLoaded: _onBoardedLoaded,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'SPLASH',
                style: TextStyle(fontSize: 22),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _onBoardedLoaded(bool onBoarded) {
    FlutterNativeSplash.remove();
    if (onBoarded) {
      GetIt.instance<AppRouter>().replace(const DiscoveryRoute());
      return;
    }
    GetIt.instance<AppRouter>().replace(OnBoardingRoute());
  }
}