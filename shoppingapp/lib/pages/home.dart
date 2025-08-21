import 'package:flutter/material.dart';
import 'package:shoppingapp/widget/support_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> categories = [
    "lib/images/headphone.PNG",
    "lib/images/Board.PNG",
    "lib/images/Boarding.PNG",
    "lib/images/computer.PNG",
    "lib/images/keyboard.PNG",
    "lib/images/mouse.PNG",
  ];

  List<Map<String, String>> products = [
    {"image": "lib/images/headphone.PNG", "name": "Headphone", "price": "\$1000"},
    {"image": "lib/images/Apple.PNG", "name": "Apple Watch", "price": "\$1300"},
    {"image": "lib/images/laptop.PNG", "name": "Laptop", "price": "\$2500"},
    {"image": "lib/images/keyboard.PNG", "name": "Keyboard", "price": "\$500"},
    {"image": "lib/images/mouse.PNG", "name": "Mouse", "price": "\$300"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2f2f2),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Hey, Lutogisha",
                    style: TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black)),
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    "lib/images/person.PNG",
                    height: 50,
                    width: 50,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Text("Good Morning",
                style: TextStyle(
                    fontSize: 16, fontWeight: FontWeight.w400, color: Colors.grey[700])),
            const SizedBox(height: 20),
            Container(
              padding: EdgeInsets.only(left: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Search Products",
                  hintStyle: TextStyle(fontSize: 16, color: Colors.grey[600]),
                  prefixIcon: Icon(Icons.search, color: Colors.black),
                ),
              ),
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Categories",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                Text("See all",
                    style: TextStyle(
                        color: Color(0xFFfd6f3e),
                        fontSize: 16,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            const SizedBox(height: 15),
            Container(
              height: 130,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 100,
                    margin: EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 103, 62, 253),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text(
                        "All",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  ...categories.map((cat) => CategoryTile(image: cat)).toList(),
                ],
              ),
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("All Products",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                Text("See all",
                    style: TextStyle(
                        color: Color(0xFFfd6f3e),
                        fontSize: 16,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            const SizedBox(height: 15),
            Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: products
                    .map((prod) => ProductTile(
                          image: prod["image"]!,
                          name: prod["name"]!,
                          price: prod["price"]!,
                        ))
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryTile extends StatelessWidget {
  final String image;
  const CategoryTile({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      margin: EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(image, height: 50, width: 50, fit: BoxFit.cover),
          Icon(Icons.arrow_forward, size: 20, color: Colors.grey[700]),
        ],
      ),
    );
  }
}

class ProductTile extends StatelessWidget {
  final String image;
  final String name;
  final String price;
  const ProductTile(
      {super.key, required this.image, required this.name, required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      margin: EdgeInsets.only(right: 20),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(image, height: 100, width: 100, fit: BoxFit.cover), 
          const SizedBox(height: 5),
          Text(name, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(price,
                  style: TextStyle(
                      color: Color(0xFFfd6f3e), fontSize: 16, fontWeight: FontWeight.bold)),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Color(0xFFfd6f3e),
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Icon(Icons.add, color: Colors.white, size: 18),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
