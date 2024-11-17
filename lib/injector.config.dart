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
import 'package:test_lime_commerce/core/di/dio_module.dart' as _i492;
import 'package:test_lime_commerce/core/di/storage_module.dart' as _i35;
import 'package:test_lime_commerce/core/storage/app_database.dart' as _i380;
import 'package:test_lime_commerce/features/product/data/datasources/local/dao/product_dao.dart'
    as _i749;
import 'package:test_lime_commerce/features/product/data/datasources/local/product_local_data_source.dart'
    as _i934;
import 'package:test_lime_commerce/features/product/data/datasources/remote/client/dummyjson_client.dart'
    as _i205;
import 'package:test_lime_commerce/features/product/data/datasources/remote/product_remote_data_source.dart'
    as _i252;
import 'package:test_lime_commerce/features/product/data/repositories/product_repository_impl.dart'
    as _i580;
import 'package:test_lime_commerce/features/product/domain/repositories/product_repository.dart'
    as _i638;
import 'package:test_lime_commerce/features/product/domain/usecases/delete_saved_product.dart'
    as _i779;
import 'package:test_lime_commerce/features/product/domain/usecases/fetch_products.dart'
    as _i937;
import 'package:test_lime_commerce/features/product/domain/usecases/save_product.dart'
    as _i190;
import 'package:test_lime_commerce/features/product/presentation/bloc/product_bloc.dart'
    as _i811;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final storageModule = _$StorageModule();
    await gh.singletonAsync<_i380.AppDatabase>(
      () => storageModule.provideAppDatabase(),
      preResolve: true,
    );
    gh.lazySingleton<_i749.ProductDao>(() => storageModule.productDao);
    gh.lazySingleton<_i361.Dio>(() => _i492.DioModule());
    gh.lazySingleton<_i934.ProductLocalDataSource>(
        () => _i934.ProductLocalDataSourceImpl(gh<_i749.ProductDao>()));
    gh.lazySingleton<_i205.DummyJsonClient>(
        () => _i205.DummyJsonClient(gh<_i361.Dio>()));
    gh.lazySingleton<_i252.ProductRemoteDataSource>(
        () => _i252.ProductRemoteDataSourceImpl(gh<_i205.DummyJsonClient>()));
    gh.lazySingleton<_i638.ProductRepostiory>(() => _i580.ProductRepositoryImpl(
          gh<_i252.ProductRemoteDataSource>(),
          gh<_i934.ProductLocalDataSource>(),
        ));
    gh.factory<_i190.SaveProduct>(
        () => _i190.SaveProduct(gh<_i638.ProductRepostiory>()));
    gh.factory<_i779.DeleteSavedProduct>(
        () => _i779.DeleteSavedProduct(gh<_i638.ProductRepostiory>()));
    gh.factory<_i937.FetchProducts>(
        () => _i937.FetchProducts(gh<_i638.ProductRepostiory>()));
    gh.factory<_i811.ProductBloc>(() => _i811.ProductBloc(
          gh<_i937.FetchProducts>(),
          gh<_i190.SaveProduct>(),
          gh<_i779.DeleteSavedProduct>(),
        ));
    return this;
  }
}

class _$StorageModule extends _i35.StorageModule {}
