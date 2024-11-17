import 'package:floor/floor.dart';

@Entity(
  tableName: 'product',
  indices: [
    Index(value: ['productId'], unique: true),
  ],
)
class ProductModelDao {
  ProductModelDao({
    this.id,
    required this.productId,
    required this.title,
  });

  @PrimaryKey(autoGenerate: true)
  final int? id;
  final int productId;
  final String title;

  @override
  String toString() =>
      'ProductModel(id: $id, productId: $productId, title: $title)';
}
