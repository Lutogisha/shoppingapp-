import '../models/order_model.dart';

class OrderStorage {
  static final List<OrderModel> orders = [];

  static void addOrder({
    required String productName,
    required String productPrice,
    required String imageUrl,
    required String paymentMethod,
  }) {
    orders.add(OrderModel(
      productName: productName,
      productPrice: productPrice,
      imageUrl: imageUrl,
      paymentMethod: paymentMethod,
    ));
  }
}
