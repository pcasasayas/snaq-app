
import 'injectable.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

@injectableInit
GetIt configureDependencies() => $initGetIt(GetIt.instance);
