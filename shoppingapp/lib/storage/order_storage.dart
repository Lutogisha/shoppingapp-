class OrderModel {
  String userName;
  String userEmail;
  String productName;
  String productCategory;
  String productPrice;
  String imageUrl;
  String paymentMethod;
  String status;

  OrderModel({
    required this.userName,
    required this.userEmail,
    required this.productName,
    required this.productCategory,
    required this.productPrice,
    required this.imageUrl,
    required this.paymentMethod,
    this.status = "On the Way",
  });
}

class OrderStorage {
  static List<OrderModel> orders = [];

  static void addOrder({
    required String userName,
    required String userEmail,
    required String productName,
    required String productCategory,
    required String productPrice,
    required String imageUrl,
    required String paymentMethod,
  }) {
    orders.add(OrderModel(
      userName: userName,
      userEmail: userEmail,
      productName: productName,
      productCategory: productCategory,
      productPrice: productPrice,
      imageUrl: imageUrl,
      paymentMethod: paymentMethod,
    ));
  }

  static void removeOrder(OrderModel order) {
    orders.remove(order);
  }

  static void markAsDelivered(OrderModel order) {
    int index = orders.indexOf(order);
    if (index != -1) {
      orders[index].status = "DELIVERED";
    }
  }
}
