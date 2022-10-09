import 'package:injectable/injectable.dart';

import 'datasource/local/onboarding_local_datasource.dart';
import 'datasource/remote/onboarding_remote_datasource.dart';
import 'onboarding_repository.dart';


@Injectable(as: OnBoardingRepository)
class OnBoardingRepositoryImpl implements OnBoardingRepository {
  OnBoardingRepositoryImpl(
    this.onBoardingLocalDataSource, 
    this.onBoardingRemoteDataSource
  );

  final OnBoardingLocalDataSource onBoardingLocalDataSource;
  final OnBoardingRemoteDataSource onBoardingRemoteDataSource;

  @override
  Future<bool> getOnBoarded() async {
    // if () {
      return onBoardingLocalDataSource.getOnBoarded();
    // }
    // return onBoardingRemoteDataSource.getOnBoarded();
  }
  
  @override
  Future<void> setOnBoarded({required bool onBoarded}) async {
    // if () {
      return onBoardingLocalDataSource.setOnBoarded(onBoarded: onBoarded);
    // }
    // return onBoardingRemoteDataSource.getOnBoarded();
  }
}