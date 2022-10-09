
import 'package:injectable/injectable.dart';

import '../onboarding_datasource.dart';

@injectable
class OnBoardingRemoteDataSource implements OnBoardingDataSource {
  
  @override
  Future<bool> getOnBoarded() {
    throw UnimplementedError();
  }

  @override
  Future<void> setOnBoarded({required bool onBoarded}) {
    throw UnimplementedError();
  }
}