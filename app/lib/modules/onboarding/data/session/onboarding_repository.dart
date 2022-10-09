
abstract class OnBoardingRepository {
  Future<bool> getOnBoarded();
  Future<void> setOnBoarded({required bool onBoarded});
}