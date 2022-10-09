
abstract class SessionDataSource {
  Future<String> getProfile();
  Future<void> setProfile({required String name});
}