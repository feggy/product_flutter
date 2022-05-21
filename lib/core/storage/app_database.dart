import 'dart:async';

import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite; // required package imports
import 'package:test_lime_commerce/features/product/data/datasources/local/dao/product_dao.dart';
import 'package:test_lime_commerce/features/product/data/models/dao/product_model_dao.dart';

part 'app_database.g.dart';

@Database(version: 1, entities: [ProductModelDao])
abstract class AppDatabase extends FloorDatabase {
  static const databaseName = 'limecommerce.db';

  ProductDao get productDao;
}
