

import 'Product.dart';

class OrderDetail {
  final int id;
  final int orderId;
  final Product productId;
  final int quantity;
  final int price;
  final DateTime updatedAt;

  OrderDetail({
    required this.id,
    required this.orderId,
    required this.productId,
    required this.quantity,
    required this.price,
    required this.updatedAt,
  });

  factory OrderDetail.fromJson(Map<String, dynamic> json) {
    return OrderDetail(
      id: json['id'],
      orderId: json['orderId'],
      productId: Product.fromJson(json['productId']),
      quantity: json['quantity'],
      price: json['price'],
      updatedAt: DateTime.parse(json['updatedAt']),
    );
  }
}