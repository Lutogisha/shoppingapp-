class OrderModel {
  final String productName;
  final String productPrice;
  final String imageUrl;
  final String paymentMethod;

  OrderModel({
    required this.productName,
    required this.productPrice,
    required this.imageUrl,
    required this.paymentMethod,
  });
}
