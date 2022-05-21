import 'package:injectable/injectable.dart';
import 'package:test_lime_commerce/features/product/data/datasources/local/dao/product_dao.dart';
import 'package:test_lime_commerce/features/product/data/models/dao/product_model_dao.dart';

abstract class ProductLocalDataSource {
  Future<int> insertProduct(ProductModelDao model);
  Future<List<ProductModelDao>?> getSavedProducts();
  Future<void> deleteItemProduct(ProductModelDao model);
}

@LazySingleton(as: ProductLocalDataSource)
class ProductLocalDataSourceImpl implements ProductLocalDataSource {
  ProductLocalDataSourceImpl(this._productDao);

  final ProductDao _productDao;

  @override
  Future<int> insertProduct(ProductModelDao model) {
    return _productDao.insert(model);
  }

  @override
  Future<List<ProductModelDao>?> getSavedProducts() {
    return _productDao.getAll();
  }

  @override
  Future<void> deleteItemProduct(ProductModelDao model) {
    return _productDao.deleteItem(model.productId);
  }
}
