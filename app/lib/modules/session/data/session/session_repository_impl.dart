import 'package:app/modules/session/data/session/datasource/local/session_local_datasource.dart';
import 'package:app/modules/session/data/session/datasource/remote/session_remote_datasource.dart';
import 'package:injectable/injectable.dart';

import 'session_repository.dart';

@Injectable(as: SessionRepository)
class SessionRepositoryImpl implements SessionRepository {
  SessionRepositoryImpl(
    this.sessionLocalDataSource, 
    this.sessionRemoteDataSource
  );

  final SessionLocalDataSource sessionLocalDataSource;
  final SessionRemoteDataSource sessionRemoteDataSource;

  @override
  Future<String> getProfile() async {
    // if () {
      return sessionLocalDataSource.getProfile();
    // }
    // return sessionRemoteDataSource.getOnBoarded();
  }
  
  @override
  Future<void> setProfile({required String name}) async {
    // if () {
      return sessionLocalDataSource.setProfile(name: name);
    // }
    // return sessionRemoteDataSource.getOnBoarded();
  }
}