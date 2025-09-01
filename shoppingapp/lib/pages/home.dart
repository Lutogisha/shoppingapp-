import 'package:flutter/material.dart';
import 'category_products.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Map<String, String>> categories = [
    {"image": "lib/images/headphone.PNG", "name": "Headphone"},
    {"image": "lib/images/watch.PNG", "name": "Watch"},
    {"image": "lib/images/electro.PNG", "name": "Electronics"},
    {"image": "lib/images/computer.PNG", "name": "Computer"},
    {"image": "lib/images/keyboard.PNG", "name": "Keyboard"},
    {"image": "lib/images/mouse.PNG", "name": "Mouse"},
  ];

  final List<Map<String, String>> products = [
  {"image": "lib/images/headphone.PNG", "name": "Headphone Basic", "price": "\$1000", "category": "Headphone", "description": "These basic headphones are perfect for everyday listening, offering clear and balanced sound along with a comfortable fit. They are lightweight and durable, making them ideal for commuting, casual use, or online meetings. Designed for convenience, they provide a reliable audio experience for users of all ages."},
  {"image": "lib/images/headphone.PNG", "name": "Headphone Pro", "price": "\$1500", "category": "Headphone", "description": "Professional-grade headphones designed for immersive audio experiences. With superior bass, noise isolation, and high-fidelity sound, they are suitable for music production, studio work, or audiophile listening. Comfortable ear pads allow for extended use without fatigue."},
  {"image": "lib/images/headphone.PNG", "name": "Wireless Headphone", "price": "\$1800", "category": "Headphone", "description": "Wireless headphones with Bluetooth connectivity and up to 20 hours of battery life, offering freedom of movement without compromising sound quality. Ergonomically designed for comfort, these headphones are perfect for workouts, travel, or day-to-day use."},
  {"image": "lib/images/headphone.PNG", "name": "Noise Cancelling", "price": "\$2000", "category": "Headphone", "description": "Featuring active noise cancellation technology, these headphones provide a distraction-free listening environment. Ideal for office work, commuting, or focus-intensive tasks, they block out background noise while delivering rich, clear audio for an immersive experience."},
  {"image": "lib/images/headphone.PNG", "name": "Headphone Studio Max", "price": "\$2500", "category": "Headphone", "description": "Studio-quality headphones engineered for professional music production and audio monitoring. They deliver precise, high-resolution sound with exceptional clarity and comfort, making them ideal for long recording or mixing sessions."},
  {"image": "lib/images/headphone.PNG", "name": "Headphone Premium", "price": "\$3000", "category": "Headphone", "description": "Premium headphones combining luxurious comfort with high-fidelity audio performance. They are designed for audiophiles who want superior sound reproduction and elegant design, suitable for critical listening and entertainment."},

  {"image": "lib/images/Apple.PNG", "name": "Apple Watch Series 5", "price": "\$1300", "category": "Watch", "description": "The Apple Watch Series 5 offers comprehensive health and fitness tracking, heart rate monitoring, and notifications on your wrist. Combining sleek design with advanced functionality, it helps users stay connected, active, and informed throughout the day."},
  {"image": "lib/images/Apple.PNG", "name": "Smart Board V1", "price": "\$1900", "category": "Watch", "description": "An interactive smart board perfect for classrooms, offices, or collaborative spaces. It supports touch input, digital writing, and wireless connectivity to facilitate presentations, brainstorming sessions, and team collaboration."},
  {"image": "lib/images/Apple.PNG", "name": "Digital Board", "price": "\$2100", "category": "Watch", "description": "A high-resolution digital board designed for creative work, presentations, and professional use. Its responsive touch surface and versatile connectivity options make it ideal for interactive learning and office environments."},
  {"image": "lib/images/Apple.PNG", "name": "Smart Board Ultra", "price": "\$2500", "category": "Watch", "description": "Ultra-responsive smart board with multi-touch support and seamless wireless connectivity. Perfect for collaborative classrooms, training sessions, and interactive presentations that require precision and reliability."},
  {"image": "lib/images/Apple.PNG", "name": "Interactive Board", "price": "\$2800", "category": "Watch", "description": "Advanced interactive board for team collaboration and presentations. It allows real-time annotations, easy file sharing, and interactive sessions to enhance engagement and productivity."},
  {"image": "lib/images/Apple.PNG", "name": "Board Pro Max", "price": "\$3000", "category": "Watch", "description": "A premium smart board featuring a large display and advanced touch capabilities. Optimized for professional presentations, creative work, and team collaboration in office and educational environments."},

  {"image": "lib/images/electro.PNG", "name": "Smart Speaker", "price": "\$500", "category": "Electronics", "description": "Compact smart speaker delivering rich audio quality and voice assistant functionality. It integrates seamlessly into smart home setups, allowing easy control of music, devices, and information with voice commands."},
  {"image": "lib/images/electro.PNG", "name": "Bluetooth Speaker", "price": "\$700", "category": "Electronics", "description": "Portable Bluetooth speaker with clear audio and extended battery life. Ideal for outdoor activities, travel, or casual listening, providing consistent performance and convenience."},
  {"image": "lib/images/electro.PNG", "name": "Noise Cancelling Earbuds", "price": "\$900", "category": "Electronics", "description": "Wireless earbuds featuring active noise cancellation and ergonomic design. Perfect for commuting, workouts, or focused listening, delivering comfort, clarity, and immersive sound."},
  {"image": "lib/images/electro.PNG", "name": "Smart Home Hub", "price": "\$1200", "category": "Electronics", "description": "Central hub to connect and manage all smart home devices efficiently. It enables streamlined control over lighting, security, and entertainment systems for a convenient and automated lifestyle."},
  {"image": "lib/images/electro.PNG", "name": "Portable Power Bank", "price": "\$1500", "category": "Electronics", "description": "High-capacity portable power bank capable of charging multiple devices on the go. Durable and travel-friendly, ensuring that your devices stay powered anytime, anywhere."},
  {"image": "lib/images/electro.PNG", "name": "Wireless Charging Pad", "price": "\$1800", "category": "Electronics", "description": "Fast wireless charging pad compatible with a variety of smartphone models. Provides a convenient and cable-free charging solution while maintaining efficiency and safety."},

  {"image": "lib/images/laptop.PNG", "name": "Laptop Basic", "price": "\$2500", "category": "Computer", "description": "Basic laptop designed for everyday computing tasks like browsing, email, and office applications. Reliable, lightweight, and energy-efficient, making it perfect for students and casual users."},
  {"image": "lib/images/laptop.PNG", "name": "Gaming Laptop", "price": "\$3500", "category": "Computer", "description": "High-performance gaming laptop with powerful processors and graphics cards. Designed for smooth gameplay, streaming, and high-intensity computing tasks for gamers and enthusiasts."},
  {"image": "lib/images/laptop.PNG", "name": "Ultrabook Laptop", "price": "\$4500", "category": "Computer", "description": "Slim and lightweight ultrabook offering fast performance and portability. Ideal for professionals on the go, combining speed, battery life, and elegant design."},
  {"image": "lib/images/laptop.PNG", "name": "Laptop Pro Max", "price": "\$5000", "category": "Computer", "description": "Premium laptop with top-tier specifications for demanding workloads and creative tasks. Perfect for video editing, 3D design, and high-performance computing."},
  {"image": "lib/images/laptop.PNG", "name": "Laptop Studio", "price": "\$5500", "category": "Computer", "description": "Powerful laptop optimized for studio work, content creation, and multimedia editing. Combines high-end hardware with reliable cooling and performance."},
  {"image": "lib/images/laptop.PNG", "name": "Laptop Air", "price": "\$6000", "category": "Computer", "description": "Ultra-light and portable laptop featuring long battery life and elegant design. Perfect for professionals and students needing mobility without sacrificing performance."},

  {"image": "lib/images/keyboard.PNG", "name": "Mechanical Keyboard", "price": "\$500", "category": "Keyboard", "description": "Tactile mechanical keyboard providing responsive keys and satisfying feedback. Ideal for gaming, programming, and extended typing sessions."},
  {"image": "lib/images/keyboard.PNG", "name": "Wireless Keyboard", "price": "\$600", "category": "Keyboard", "description": "Compact wireless keyboard designed for portability and a clutter-free workspace. Offers smooth typing experience and easy setup."},
  {"image": "lib/images/keyboard.PNG", "name": "Gaming Keyboard", "price": "\$800", "category": "Keyboard", "description": "RGB backlit gaming keyboard with programmable keys and anti-ghosting. Perfect for competitive gaming and customizable setups."},
  {"image": "lib/images/keyboard.PNG", "name": "RGB Keyboard", "price": "\$1000", "category": "Keyboard", "description": "Durable keyboard featuring customizable RGB lighting. Ideal for enhancing aesthetics and improving typing and gaming performance."},
  {"image": "lib/images/keyboard.PNG", "name": "Compact Keyboard", "price": "\$1200", "category": "Keyboard", "description": "Minimalist compact keyboard suitable for small desks or travel. Offers reliable typing with space-saving design and portability."},
  {"image": "lib/images/keyboard.PNG", "name": "Keyboard Pro", "price": "\$1500", "category": "Keyboard", "description": "Professional keyboard designed for speed, precision, and comfort. Perfect for office work, programming, and gaming applications."},

  {"image": "lib/images/mouse.PNG", "name": "Standard Mouse", "price": "\$300", "category": "Mouse", "description": "Reliable standard mouse for everyday computer use. Comfortable, responsive, and easy to use for both work and leisure."},
  {"image": "lib/images/mouse.PNG", "name": "Wireless Mouse", "price": "\$400", "category": "Mouse", "description": "Cordless mouse offering smooth tracking and long battery life. Provides flexibility and convenience without tangled cables."},
  {"image": "lib/images/mouse.PNG", "name": "Gaming Mouse", "price": "\$700", "category": "Mouse", "description": "High-precision gaming mouse with adjustable DPI and programmable buttons. Designed for competitive gaming and enhanced performance."},
  {"image": "lib/images/mouse.PNG", "name": "RGB Mouse", "price": "\$900", "category": "Mouse", "description": "RGB backlit mouse with ergonomic design and customizable colors. Perfect for gaming setups and aesthetic workspaces."},
  {"image": "lib/images/mouse.PNG", "name": "Ergonomic Mouse", "price": "\$1100", "category": "Mouse", "description": "Mouse designed to reduce strain and provide maximum comfort during extended use. Suitable for office work, gaming, and professional tasks."},
  {"image": "lib/images/mouse.PNG", "name": "Mouse Pro Max", "price": "\$1300", "category": "Mouse", "description": "High-end professional mouse optimized for gaming, precision work, and advanced computing. Features advanced sensors, ergonomic design, and durable construction."},
];

List<Map<String, String>> filteredProducts = [];
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    filteredProducts = products;
    searchController.addListener(() {
      filterProducts();
    });
  }

  void filterProducts() {
    String query = searchController.text.toLowerCase();
    setState(() {
      filteredProducts = products.where((prod) => prod["name"]!.toLowerCase().contains(query)).toList();
    });
  }

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
                Text("Hellow, Mr Jacob", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black)),
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset("lib/images/person.PNG", height: 50, width: 50, fit: BoxFit.cover),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Text("Good Afternoon", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.grey[700])),
            const SizedBox(height: 20),
            Container(
              padding: EdgeInsets.only(left: 15),
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12)),
              child: TextField(
                controller: searchController,
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
                Text("Categories", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                Text("See all", style: TextStyle(color: Color(0xFFfd6f3e), fontSize: 16, fontWeight: FontWeight.bold)),
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
                    decoration: BoxDecoration(color: Color(0xFFfd6f3e), borderRadius: BorderRadius.circular(12)),
                    child: Center(child: Text("All", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold))),
                  ),
                  ...categories.map((cat) {
                    return CategoryTile(image: cat["image"]!, categoryName: cat["name"]!, allProducts: products);
                  }).toList(),
                ],
              ),
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("All Products", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                Text("See all", style: TextStyle(color: Color(0xFFfd6f3e), fontSize: 16, fontWeight: FontWeight.bold)),
              ],
            ),
            const SizedBox(height: 15),
            Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: filteredProducts.map((prod) => ProductTile(image: prod["image"]!, name: prod["name"]!, price: prod["price"]!)).toList(),
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
  final String categoryName;
  final List<Map<String, String>> allProducts;

  const CategoryTile({super.key, required this.image, required this.categoryName, required this.allProducts});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => CategoryProducts(categoryName: categoryName, products: allProducts)));
      },
      child: Container(
        width: 100,
        margin: EdgeInsets.only(right: 20),
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12)),
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(image, height: 50, width: 50, fit: BoxFit.cover),
            const SizedBox(height: 10),
            Text(categoryName, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
          ],
        ),
      ),
    );
  }
}

class ProductTile extends StatelessWidget {
  final String image;
  final String name;
  final String price;

  const ProductTile({super.key, required this.image, required this.name, required this.price});

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
              Text(price, style: TextStyle(color: Color(0xFFfd6f3e), fontSize: 16, fontWeight: FontWeight.bold)),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(color: Color(0xFFfd6f3e), borderRadius: BorderRadius.circular(7)),
                child: Icon(Icons.add, color: Colors.white, size: 18),
              ),
            ],
          ),
        ],
      ),
    );
  }
}