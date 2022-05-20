// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:test_lime_commerce/core/di/dio_module.dart' as _i4;
import 'package:test_lime_commerce/features/product/data/datasources/remote/client/dummyjson_client.dart'
    as _i5;
import 'package:test_lime_commerce/features/product/data/datasources/remote/product_remote_datasource.dart'
    as _i6;
import 'package:test_lime_commerce/features/product/data/repositories/product_repository_impl.dart'
    as _i8;
import 'package:test_lime_commerce/features/product/domain/repositories/product_repository.dart'
    as _i7;
import 'package:test_lime_commerce/features/product/domain/usecases/delete_saved_product.dart'
    as _i10;
import 'package:test_lime_commerce/features/product/domain/usecases/fetch_products.dart'
    as _i11;
import 'package:test_lime_commerce/features/product/domain/usecases/fetch_saved_product.dart'
    as _i12;
import 'package:test_lime_commerce/features/product/domain/usecases/save_product.dart'
    as _i9;
import 'package:test_lime_commerce/features/product/presentation/bloc/product_bloc.dart'
    as _i13; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.Dio>(() => _i4.DioModule());
  gh.lazySingleton<_i5.DummyJsonClient>(
      () => _i5.DummyJsonClient(get<_i3.Dio>()));
  gh.lazySingleton<_i6.ProductRemoteDataSource>(
      () => _i6.ProductRemoteDataSourceImpl(get<_i5.DummyJsonClient>()));
  gh.lazySingleton<_i7.ProductRepostiory>(
      () => _i8.ProductRepositoryImpl(get<_i6.ProductRemoteDataSource>()));
  gh.factory<_i9.SaveProduct>(
      () => _i9.SaveProduct(get<_i7.ProductRepostiory>()));
  gh.factory<_i10.DeleteSavedProduct>(
      () => _i10.DeleteSavedProduct(get<_i7.ProductRepostiory>()));
  gh.factory<_i11.FetchProducts>(
      () => _i11.FetchProducts(get<_i7.ProductRepostiory>()));
  gh.factory<_i12.FetchSavedProduct>(
      () => _i12.FetchSavedProduct(get<_i7.ProductRepostiory>()));
  gh.factory<_i13.ProductBloc>(() => _i13.ProductBloc(
      get<_i11.FetchProducts>(),
      get<_i9.SaveProduct>(),
      get<_i12.FetchSavedProduct>(),
      get<_i10.DeleteSavedProduct>()));
  return get;
}
