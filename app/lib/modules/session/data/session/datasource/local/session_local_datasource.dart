import 'package:app/modules/session/data/session/datasource/session_datasource.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';

@injectable
class SessionLocalDataSource implements SessionDataSource {
  SessionLocalDataSource(this._isarDb);

  final Isar _isarDb;

  @override
  Future<String> getProfile() async {
    throw UnimplementedError();
  }

  @override
  Future<void> setProfile({required String name}) async {
    throw UnimplementedError();
  }
}