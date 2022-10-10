// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:core/base/data/api/api_client.dart' as _i10;
import 'package:core/loading/bloc/loader_cubit.dart' as _i32;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:isar/isar.dart' as _i5;

import '../app/navigation/routers/app_router.dart' as _i3;
import '../modules/meals/data/datasource/local/meals_local_datasource.dart'
    as _i6;
import '../modules/meals/data/datasource/local/meals_local_datasource_impl.dart'
    as _i7;
import '../modules/meals/data/datasource/remote/meals_remote_datasource.dart'
    as _i8;
import '../modules/meals/data/datasource/remote/meals_remote_datasource_impl.dart'
    as _i9;
import '../modules/meals/data/repository/meals_repository.dart' as _i11;
import '../modules/meals/data/repository/meals_repository_impl.dart' as _i12;
import '../modules/meals/domain/models/meal/meal_model.dart' as _i38;
import '../modules/meals/domain/usecases/get/meals_get_usecase.dart' as _i29;
import '../modules/meals/domain/usecases/get/meals_get_usecase_impl.dart'
    as _i30;
import '../modules/meals/domain/usecases/getAll/meals_get_all_usecase.dart'
    as _i23;
import '../modules/meals/domain/usecases/getAll/meals_get_all_usecase_impl.dart'
    as _i24;
import '../modules/meals/domain/usecases/getNotDone/meals_get_notdone_usecase.dart'
    as _i25;
import '../modules/meals/domain/usecases/getNotDone/meals_get_notdone_usecase_impl.dart'
    as _i26;
import '../modules/meals/domain/usecases/getRand/meals_get_rand_usecase.dart'
    as _i27;
import '../modules/meals/domain/usecases/getRand/meals_get_rand_usecase_impl.dart'
    as _i28;
import '../modules/meals/domain/usecases/setStatus/meals_set_status_usecase.dart'
    as _i13;
import '../modules/meals/domain/usecases/setStatus/meals_set_status_usecase_impl.dart'
    as _i14;
import '../modules/meals/presentation/blocs/getall/meals_getall_bloc.dart'
    as _i39;
import '../modules/meals/presentation/blocs/getdetail/meal_getdetail_bloc.dart'
    as _i37;
import '../modules/meals/presentation/blocs/getnotdone/meals_getnotdone_bloc.dart'
    as _i40;
import '../modules/meals/presentation/blocs/setstatus/meals_setstatus_bloc.dart'
    as _i31;
import '../modules/onboarding/data/session/datasource/local/onboarding_local_datasource.dart'
    as _i15;
import '../modules/onboarding/data/session/datasource/remote/onboarding_remote_datasource.dart'
    as _i16;
import '../modules/onboarding/data/session/onboarding_repository.dart' as _i17;
import '../modules/onboarding/data/session/onboarding_repository_impl.dart'
    as _i18;
import '../modules/onboarding/domain/usecases/onboarded/get/onboarded_get_usecase.dart'
    as _i33;
import '../modules/onboarding/domain/usecases/onboarded/get/onboarded_get_usecase_impl.dart'
    as _i34;
import '../modules/onboarding/domain/usecases/onboarded/set/onboarded_set_usecase.dart'
    as _i35;
import '../modules/onboarding/domain/usecases/onboarded/set/onboarded_set_usecase_impl.dart'
    as _i36;
import '../modules/onboarding/presentation/blocs/onboarded/get/onboarded_get_cubit.dart'
    as _i41;
import '../modules/onboarding/presentation/blocs/onboarded/set/onboarded_set_cubit.dart'
    as _i42;
import '../modules/session/data/session/datasource/local/session_local_datasource.dart'
    as _i19;
import '../modules/session/data/session/datasource/remote/session_remote_datasource.dart'
    as _i20;
import '../modules/session/data/session/session_repository.dart' as _i21;
import '../modules/session/data/session/session_repository_impl.dart' as _i22;
import 'isar_di.dart' as _i45;
import 'navigation_di.dart' as _i43;
import 'secure_storage_di.dart' as _i44; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i6.MealsLocalDataSource>(
      () => _i7.MealsLocalDataSourceImpl(get<_i5.Isar>()));
  gh.factory<_i8.MealsRemoteDataSource>(
      () => _i9.MealsRemoteDataSourceImpl(get<_i10.ApiClient>()));
  gh.factory<_i11.MealsRepository>(() => _i12.MealsRepositoryImpl(
        get<_i6.MealsLocalDataSource>(),
        get<_i8.MealsRemoteDataSource>(),
      ));
  gh.factory<_i13.MealsSetStatusUseCase>(
      () => _i14.MealsSetStatusUseCaseImpl(get<_i11.MealsRepository>()));
  gh.factory<_i15.OnBoardingLocalDataSource>(
      () => _i15.OnBoardingLocalDataSource(get<_i4.FlutterSecureStorage>()));
  gh.factory<_i16.OnBoardingRemoteDataSource>(
      () => _i16.OnBoardingRemoteDataSource());
  gh.factory<_i17.OnBoardingRepository>(() => _i18.OnBoardingRepositoryImpl(
        get<_i15.OnBoardingLocalDataSource>(),
        get<_i16.OnBoardingRemoteDataSource>(),
      ));
  gh.factory<_i19.SessionLocalDataSource>(
      () => _i19.SessionLocalDataSource(get<_i5.Isar>()));
  gh.factory<_i20.SessionRemoteDataSource>(
      () => _i20.SessionRemoteDataSource());
  gh.factory<_i21.SessionRepository>(() => _i22.SessionRepositoryImpl(
        get<_i19.SessionLocalDataSource>(),
        get<_i20.SessionRemoteDataSource>(),
      ));
  gh.factory<_i23.MealsGetAllUseCase>(
      () => _i24.MealsGetAllUseCaseImpl(get<_i11.MealsRepository>()));
  gh.factory<_i25.MealsGetNotDoneUseCase>(
      () => _i26.MealsGetNotDoneUseCaseImpl(get<_i11.MealsRepository>()));
  gh.factory<_i27.MealsGetRandUseCase>(
      () => _i28.MealsGetRandUseCaseImpl(get<_i11.MealsRepository>()));
  gh.factory<_i29.MealsGetUseCase>(
      () => _i30.MealsGetUseCaseImpl(get<_i11.MealsRepository>()));
  gh.factoryParam<_i31.MealsSetStatusCubit, _i32.LoaderCubit?, dynamic>((
    _loaderCubit,
    _,
  ) =>
      _i31.MealsSetStatusCubit(
        _loaderCubit,
        get<_i13.MealsSetStatusUseCase>(),
      ));
  gh.factory<_i33.OnBoardedGetUseCase>(
      () => _i34.OnBoardedGetUseCaseImpl(get<_i17.OnBoardingRepository>()));
  gh.factory<_i35.OnBoardedSetUseCase>(
      () => _i36.OnBoardedSetUseCaseImpl(get<_i17.OnBoardingRepository>()));
  gh.factoryParam<_i37.MealGetDetailCubit, _i32.LoaderCubit?, _i38.MealModel>((
    _loaderCubit,
    meal,
  ) =>
      _i37.MealGetDetailCubit(
        _loaderCubit,
        meal,
        get<_i29.MealsGetUseCase>(),
      ));
  gh.factoryParam<_i39.MealsGetAllCubit, _i32.LoaderCubit?, dynamic>((
    _loaderCubit,
    _,
  ) =>
      _i39.MealsGetAllCubit(
        _loaderCubit,
        get<_i23.MealsGetAllUseCase>(),
      ));
  gh.factoryParam<_i40.MealsGetNotDoneCubit, _i32.LoaderCubit?, dynamic>((
    _loaderCubit,
    _,
  ) =>
      _i40.MealsGetNotDoneCubit(
        _loaderCubit,
        get<_i25.MealsGetNotDoneUseCase>(),
      ));
  gh.factoryParam<_i41.OnBoardedGetCubit, _i32.LoaderCubit?, dynamic>((
    _loaderCubit,
    _,
  ) =>
      _i41.OnBoardedGetCubit(
        _loaderCubit,
        get<_i33.OnBoardedGetUseCase>(),
      ));
  gh.factoryParam<_i42.OnBoardedSetCubit, _i32.LoaderCubit?, dynamic>((
    _loaderCubit,
    _,
  ) =>
      _i42.OnBoardedSetCubit(
        _loaderCubit,
        get<_i35.OnBoardedSetUseCase>(),
      ));
  return get;
}

class _$NavigationDi extends _i43.NavigationDi {}

class _$SecureStorageDi extends _i44.SecureStorageDi {}

class _$IsarDi extends _i45.IsarDi {}
