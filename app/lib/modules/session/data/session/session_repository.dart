
abstract class SessionRepository {
  Future<String> getProfile();
  Future<void> setProfile({required String name});
}