import 'package:flutter/material.dart';
import '../storage/order_storage.dart';

class AdminOrder extends StatefulWidget {
  const AdminOrder({super.key});

  @override
  State<AdminOrder> createState() => _AdminOrderState();
}

class _AdminOrderState extends State<AdminOrder> {
  void refreshOrders() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final orders = OrderStorage.orders;

    return Scaffold(
      appBar: AppBar(
        title: const Text("All Orders", style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),),
        backgroundColor: const Color(0xFFfd6f3e),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: refreshOrders,
          ),
        ],
      ),
      body: orders.isEmpty
          ? const Center(
              child: Text(
                "Your order hasn't been received yet.",
                 style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            )
          : ListView.builder(
              itemCount: orders.length,
              itemBuilder: (context, index) {
                final order = orders[index];
                return Card(
                  margin: const EdgeInsets.all(8),
                  child: ListTile(
                    title: Text(
                      order.userName,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(order.userEmail),
                        const SizedBox(height: 4),
                        Text("Product: ${order.productName}"),
                        Text("Category: ${order.productCategory}"),
                        Text("Price: ${order.productPrice}"),
                        Text("Status: ${order.status}"),
                      ],
                    ),
                    trailing: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFfd6f3e),
                        minimumSize: const Size(60, 35),
                      ),
                      onPressed: () {
                        OrderStorage.markAsDelivered(order);
                        setState(() {});
                      },
                      child: const Text("Done", style: TextStyle(fontSize: 14)),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
