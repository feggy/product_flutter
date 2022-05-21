import 'package:injectable/injectable.dart';
import 'package:test_lime_commerce/core/storage/app_database.dart';
import 'package:test_lime_commerce/features/product/data/datasources/local/dao/product_dao.dart';
import 'package:test_lime_commerce/injector.dart';

@module
abstract class StorageModule {
  @preResolve
  @singleton
  Future<AppDatabase> provideAppDatabase() =>
      $FloorAppDatabase.databaseBuilder(AppDatabase.databaseName).build();

  @lazySingleton
  ProductDao get productDao => getIt<AppDatabase>().productDao;
}
