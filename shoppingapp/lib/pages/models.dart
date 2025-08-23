class OrderItem {
  final String name;
  final String price;
  OrderItem({required this.name, required this.price});
}

class OrderData {
  static List<OrderItem> orders = [];
}
