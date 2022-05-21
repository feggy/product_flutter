import 'package:floor/floor.dart';
import 'package:test_lime_commerce/features/product/data/models/dao/product_model_dao.dart';

@dao
abstract class ProductDao {
  @Insert(onConflict: OnConflictStrategy.replace)
  Future<int> insert(ProductModelDao productModel);

  @Update(onConflict: OnConflictStrategy.replace)
  Future<void> update(ProductModelDao productModel);

  @Query('SELECT * FROM product')
  Future<List<ProductModelDao>?> getAll();

  @Query('DELETE FROM product WHERE productId = :productId')
  Future<void> deleteItem(int productId);
}
