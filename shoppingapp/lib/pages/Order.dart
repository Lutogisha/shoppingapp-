import 'package:flutter/material.dart';
import '../storage/order_storage.dart';

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> {
  List<OrderModel> orders = [];

  @override
  void initState() {
    super.initState();
    orders = OrderStorage.orders;
  }

  void refreshOrders() {
    setState(() {
      orders = OrderStorage.orders;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Current Orders", style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),),
        backgroundColor: const Color(0xFFfd6f3e),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: refreshOrders,
          )
        ],
      ),
      body: orders.isEmpty
          ? const Center(
              child: Text(
                "No orders yet.",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            )
          : ListView.builder(
              itemCount: orders.length,
              itemBuilder: (context, index) {
                final order = orders[index];
                return Card(
                  margin: const EdgeInsets.all(8),
                  child: ListTile(
                    leading: Image.asset(
                      order.imageUrl,
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                    title: Text(
                      order.productName,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Category: ${order.productCategory}"),
                        Text("Price: ${order.productPrice}"),
                        Text("Status: ${order.status}",
                            style: const TextStyle(
                              fontSize: 18,
                              color: Color(0xFFfd6f3e),
                              fontWeight: FontWeight.bold,
                            )),
                      ],
                    ),
                  ),
                );
              },
            ),
    );
  }
}
