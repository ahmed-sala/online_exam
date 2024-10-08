// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../features/auth/data/api/ApiManger.dart' as _i881;
import '../../features/auth/data/api/RetrofitClient.dart' as _i361;
import '../../features/auth/data/datasource/contracts/AuthDataSource.dart'
    as _i187;
import '../../features/auth/data/datasource/impl/AuthOfflineDataSourceImpl.dart'
    as _i516;
import '../../features/auth/data/datasource/impl/AuthOnlineDatasourceImpl.dart'
    as _i156;
import '../../features/auth/data/repository/AuthRepository.dart' as _i154;
import '../../features/auth/domain/contract/repository/AuthRepo.dart' as _i833;
import 'di_module.dart' as _i211;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final apiModule = _$ApiModule();
    gh.lazySingleton<_i361.Dio>(() => apiModule.dio());
    gh.factory<_i187.AuthOfflineDataSource>(
        () => _i516.AuthOfflineDataSourceImpl());
    gh.lazySingleton<_i361.RetrofitClient>(
        () => apiModule.retrofitClient(gh<_i361.Dio>()));
    gh.factory<_i881.ApiManger>(
        () => _i881.ApiManger(gh<_i361.RetrofitClient>()));
    gh.factory<_i187.AuthOnlineDataSource>(
        () => _i156.AuthOnlineDatasourceImpl(gh<_i881.ApiManger>()));
    gh.factory<_i833.AuthRepo>(() => _i154.AuthRepositoryImpl(
          gh<_i187.AuthOfflineDataSource>(),
          gh<_i187.AuthOnlineDataSource>(),
        ));
    return this;
  }
}

class _$ApiModule extends _i211.ApiModule {}
