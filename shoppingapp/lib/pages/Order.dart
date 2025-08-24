import 'package:flutter/material.dart';
import '../storage/order_storage.dart';

class Order extends StatelessWidget {
  const Order({super.key});

  @override
  Widget build(BuildContext context) {
    final orders = OrderStorage.orders;

    return Scaffold(
      appBar: AppBar(
        title: const Text("My Orders"),
        backgroundColor: const Color(0xFFfd6f3e),
      ),
      body: orders.isEmpty
          ? const Center(
              child: Text(
                "No orders yet.",
                style: TextStyle(fontSize: 18),
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
                    subtitle: RichText(
                      text: TextSpan(
                        style: const TextStyle(color: Colors.black),
                        children: [
                          TextSpan(
                            text: "Price: ${order.productPrice}\n",
                            style: const TextStyle(
                              color: Color(0xFFfd6f3e),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: "Paid via: ${order.paymentMethod}",
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
