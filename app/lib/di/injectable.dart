
import 'injectable.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:core/di/injectable.config.dart' as coredi;

@injectableInit
GetIt configureDependencies() {
  final getIt = coredi.$initGetIt(GetIt.instance);
  return $initGetIt(getIt);
}
