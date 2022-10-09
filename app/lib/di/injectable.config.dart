// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:core/loading/bloc/loader_cubit.dart' as _i19;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:isar/isar.dart' as _i5;

import '../app/navigation/routers/app_router.dart' as _i3;
import '../modules/onboarding/data/session/datasource/local/onboarding_local_datasource.dart'
    as _i6;
import '../modules/onboarding/data/session/datasource/remote/onboarding_remote_datasource.dart'
    as _i7;
import '../modules/onboarding/data/session/onboarding_repository.dart' as _i8;
import '../modules/onboarding/data/session/onboarding_repository_impl.dart'
    as _i9;
import '../modules/onboarding/domain/usecases/onboarded/get/onboarded_get_usecase.dart'
    as _i14;
import '../modules/onboarding/domain/usecases/onboarded/get/onboarded_get_usecase_impl.dart'
    as _i15;
import '../modules/onboarding/domain/usecases/onboarded/set/onboarded_set_usecase.dart'
    as _i16;
import '../modules/onboarding/domain/usecases/onboarded/set/onboarded_set_usecase_impl.dart'
    as _i17;
import '../modules/onboarding/presentation/blocs/onboarded/get/onboarded_get_cubit.dart'
    as _i18;
import '../modules/onboarding/presentation/blocs/onboarded/set/onboarded_set_cubit.dart'
    as _i20;
import '../modules/session/data/session/datasource/local/session_local_datasource.dart'
    as _i10;
import '../modules/session/data/session/datasource/remote/session_remote_datasource.dart'
    as _i11;
import '../modules/session/data/session/session_repository.dart' as _i12;
import '../modules/session/data/session/session_repository_impl.dart' as _i13;
import 'isar_di.dart' as _i23;
import 'navigation_di.dart' as _i21;
import 'secure_storage_di.dart' as _i22; // ignore_for_file: unnecessary_lambdas

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
  final navigationDi = _$NavigationDi();
  final secureStorageDi = _$SecureStorageDi();
  final isarDi = _$IsarDi();
  gh.lazySingleton<_i3.AppRouter>(() => navigationDi.router);
  gh.factory<_i4.FlutterSecureStorage>(() => secureStorageDi.secureStorage);
  gh.lazySingleton<_i5.Isar>(() => isarDi.isar);
  gh.factory<_i6.OnBoardingLocalDataSource>(
      () => _i6.OnBoardingLocalDataSource(get<_i4.FlutterSecureStorage>()));
  gh.factory<_i7.OnBoardingRemoteDataSource>(
      () => _i7.OnBoardingRemoteDataSource());
  gh.factory<_i8.OnBoardingRepository>(() => _i9.OnBoardingRepositoryImpl(
        get<_i6.OnBoardingLocalDataSource>(),
        get<_i7.OnBoardingRemoteDataSource>(),
      ));
  gh.factory<_i10.SessionLocalDataSource>(
      () => _i10.SessionLocalDataSource(get<_i5.Isar>()));
  gh.factory<_i11.SessionRemoteDataSource>(
      () => _i11.SessionRemoteDataSource());
  gh.factory<_i12.SessionRepository>(() => _i13.SessionRepositoryImpl(
        get<_i10.SessionLocalDataSource>(),
        get<_i11.SessionRemoteDataSource>(),
      ));
  gh.factory<_i14.OnBoardedGetUseCase>(
      () => _i15.OnBoardedGetUseCaseImpl(get<_i8.OnBoardingRepository>()));
  gh.factory<_i16.OnBoardedSetUseCase>(
      () => _i17.OnBoardedSetUseCaseImpl(get<_i8.OnBoardingRepository>()));
  gh.factoryParam<_i18.OnBoardedGetCubit, _i19.LoaderCubit?, dynamic>((
    _loaderCubit,
    _,
  ) =>
      _i18.OnBoardedGetCubit(
        _loaderCubit,
        get<_i14.OnBoardedGetUseCase>(),
      ));
  gh.factoryParam<_i20.OnBoardedSetCubit, _i19.LoaderCubit?, dynamic>((
    _loaderCubit,
    _,
  ) =>
      _i20.OnBoardedSetCubit(
        _loaderCubit,
        get<_i16.OnBoardedSetUseCase>(),
      ));
  return get;
}

class _$NavigationDi extends _i21.NavigationDi {}

class _$SecureStorageDi extends _i22.SecureStorageDi {}

class _$IsarDi extends _i23.IsarDi {}
