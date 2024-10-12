
class Product {
  final int id;
  final String name;
  final int price;
  final String description;
  final String imageUrl;
  final int stock;
  final int categoryId;
  final String slug;
  final bool disabled;
  final DateTime createdAt;
  final DateTime updatedAt;
  final int averageRating;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    required this.imageUrl,
    required this.stock,
    required this.categoryId,
    required this.slug,
    required this.disabled,
    required this.createdAt,
    required this.updatedAt,
    required this.averageRating,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      name: json['name'],
      price: json['price'],
      description: json['description'],
      imageUrl: json['imageUrl'],
      stock: json['stock'],
      categoryId: json['categoryId'],
      slug: json['slug'],
      disabled: json['disabled'],
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
      averageRating: json['averageRating'],
    );
  }

}