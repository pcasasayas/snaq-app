// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../base/data/api/api_client.dart' as _i7;
import '../base/data/api/interceptors/logging_interceptor.dart' as _i5;
import '../base/data/api/interceptors/mock_interceptor.dart' as _i6;
import '../loading/bloc/loader_cubit.dart' as _i4;
import 'dio_di.dart' as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final dioDi = _$DioDi();
  gh.lazySingleton<_i3.Dio>(() => dioDi.dio);
  gh.factory<_i4.LoaderCubit>(() => _i4.LoaderCubit());
  gh.factory<_i5.LoggingInterceptor>(() => _i5.LoggingInterceptor());
  gh.factory<_i6.MockInterceptor>(() => _i6.MockInterceptor());
  gh.lazySingleton<_i7.ApiClient>(() => _i7.ApiClient(
        get<_i3.Dio>(),
        get<_i5.LoggingInterceptor>(),
        get<_i6.MockInterceptor>(),
      ));
  return get;
}

class _$DioDi extends _i8.DioDi {}
