// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:test_lime_commerce/core/di/dio_module.dart' as _i5;
import 'package:test_lime_commerce/core/di/storage_module.dart' as _i16;
import 'package:test_lime_commerce/core/storage/app_database.dart' as _i3;
import 'package:test_lime_commerce/features/product/data/datasources/local/dao/product_dao.dart'
    as _i7;
import 'package:test_lime_commerce/features/product/data/datasources/local/product_local_data_source.dart'
    as _i8;
import 'package:test_lime_commerce/features/product/data/datasources/remote/client/dummyjson_client.dart'
    as _i6;
import 'package:test_lime_commerce/features/product/data/datasources/remote/product_remote_data_source.dart'
    as _i9;
import 'package:test_lime_commerce/features/product/data/repositories/product_repository_impl.dart'
    as _i11;
import 'package:test_lime_commerce/features/product/domain/repositories/product_repository.dart'
    as _i10;
import 'package:test_lime_commerce/features/product/domain/usecases/delete_saved_product.dart'
    as _i13;
import 'package:test_lime_commerce/features/product/domain/usecases/fetch_products.dart'
    as _i14;
import 'package:test_lime_commerce/features/product/domain/usecases/save_product.dart'
    as _i12;
import 'package:test_lime_commerce/features/product/presentation/bloc/product_bloc.dart'
    as _i15; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final storageModule = _$StorageModule();
  await gh.singletonAsync<_i3.AppDatabase>(
      () => storageModule.provideAppDatabase(),
      preResolve: true);
  gh.lazySingleton<_i4.Dio>(() => _i5.DioModule());
  gh.lazySingleton<_i6.DummyJsonClient>(
      () => _i6.DummyJsonClient(get<_i4.Dio>()));
  gh.lazySingleton<_i7.ProductDao>(() => storageModule.productDao);
  gh.lazySingleton<_i8.ProductLocalDataSource>(
      () => _i8.ProductLocalDataSourceImpl(get<_i7.ProductDao>()));
  gh.lazySingleton<_i9.ProductRemoteDataSource>(
      () => _i9.ProductRemoteDataSourceImpl(get<_i6.DummyJsonClient>()));
  gh.lazySingleton<_i10.ProductRepostiory>(() => _i11.ProductRepositoryImpl(
      get<_i9.ProductRemoteDataSource>(), get<_i8.ProductLocalDataSource>()));
  gh.factory<_i12.SaveProduct>(
      () => _i12.SaveProduct(get<_i10.ProductRepostiory>()));
  gh.factory<_i13.DeleteSavedProduct>(
      () => _i13.DeleteSavedProduct(get<_i10.ProductRepostiory>()));
  gh.factory<_i14.FetchProducts>(
      () => _i14.FetchProducts(get<_i10.ProductRepostiory>()));
  gh.factory<_i15.ProductBloc>(() => _i15.ProductBloc(get<_i14.FetchProducts>(),
      get<_i12.SaveProduct>(), get<_i13.DeleteSavedProduct>()));
  return get;
}

class _$StorageModule extends _i16.StorageModule {}
