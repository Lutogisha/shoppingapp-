import 'package:flutter/material.dart';
import 'product_detail.dart';

class CategoryProducts extends StatelessWidget {
  final String categoryName;
  final List<Map<String, String>> products;

  const CategoryProducts({super.key, required this.categoryName, required this.products});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> filteredProducts = products
        .where((prod) => prod["category"]!.toLowerCase() == categoryName.toLowerCase())
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryName),
        backgroundColor: const Color(0xFFfd6f3e),
      ),
      body: filteredProducts.isEmpty
          ? Center(child: Text("No products found for $categoryName"))
          : GridView.builder(
              padding: const EdgeInsets.all(16),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                childAspectRatio: 0.8,
              ),
              itemCount: filteredProducts.length,
              itemBuilder: (context, index) {
                var product = filteredProducts[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => ProductDetail(
                          name: product["name"]!,
                          image: product["image"]!,
                          price: product["price"]!,
                          description: product["description"] ?? "No description available",
                        ),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12)),
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(product["image"]!, height: 80),
                        Text(product["name"]!, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                        Text(product["price"]!, style: const TextStyle(color: Color(0xFFfd6f3e), fontSize: 16, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                );
              },
            ),
    );
  }
}
