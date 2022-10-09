import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:string_validator/string_validator.dart';

import '../../onboarding_constants.dart';
import '../onboarding_datasource.dart';


@injectable
class OnBoardingLocalDataSource implements OnBoardingDataSource {
  OnBoardingLocalDataSource(this._flutterSecureStorage);

  final FlutterSecureStorage _flutterSecureStorage;

  @override
  Future<bool> getOnBoarded() async {
    final value = await _flutterSecureStorage.read(
      key: OnBoardingConstants.onBoardedName
    );
    if (value == null) return false;
    return toBoolean(value, true);
  }

  @override
  Future<void> setOnBoarded({required bool onBoarded}) async {
    await _flutterSecureStorage.write(
      key: OnBoardingConstants.onBoardedName, 
      value: toString(onBoarded)
    );
  }
}