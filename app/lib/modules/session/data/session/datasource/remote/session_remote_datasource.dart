import 'package:app/modules/session/data/session/datasource/session_datasource.dart';
import 'package:injectable/injectable.dart';

@injectable
class SessionRemoteDataSource implements SessionDataSource {

  @override
  Future<String> getProfile() {
    throw UnimplementedError();
  }

  @override
  Future<void> setProfile({required String name}) {
    throw UnimplementedError();
  }
}