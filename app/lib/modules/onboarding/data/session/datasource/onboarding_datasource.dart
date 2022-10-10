
abstract class OnBoardingDataSource {
  Future<bool> getOnBoarded();
  Future<void> setOnBoarded({required bool onBoarded});
}