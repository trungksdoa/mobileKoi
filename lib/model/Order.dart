//Can I use lombok ?
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       _counter++;
//     });
//Define order model


import 'package:koi_fish_mobile/model/OrderDetail.dart';

class Order {
  final String fullName;
  final String address;
  final String phone;
  final int userId;
  final int totalAmount;
  final bool status;
  final List<OrderDetail> items;
  final DateTime updatedAt;

  Order({
    required this.fullName,
    required this.address,
    required this.phone,
    required this.userId,
    required this.totalAmount,
    required this.status,
    required this.items,
    required this.updatedAt,
  });

  factory Order.fromJson(Map<String, dynamic> json) {
    return Order(
      fullName: json['fullName'],
      address: json['address'],
      phone: json['phone'],
      userId: json['userId'],
      totalAmount: json['totalAmount'],
      status: json['status'],
      items: json['items'],
      updatedAt: DateTime.parse(json['updatedAt']),
    );
  }
}