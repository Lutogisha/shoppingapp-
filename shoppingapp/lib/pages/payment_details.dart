import 'package:flutter/material.dart';
import '../storage/order_storage.dart';

class PaymentDetails extends StatefulWidget {
  final String productName;
  final String productPrice;
  final String productImage;
  final String productCategory;

  const PaymentDetails({
    super.key,
    required this.productName,
    required this.productPrice,
    required this.productImage,
    required this.productCategory,
  });

  @override
  State<PaymentDetails> createState() => _PaymentDetailsState();
}

class _PaymentDetailsState extends State<PaymentDetails> {
  String selectedMethod = "";
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController cardController = TextEditingController();
  final TextEditingController pinController = TextEditingController();

  final List<String> mobileMethods = ["M-PESA", "Mix by YAS", "AirtelMoney"];
  final List<String> bankMethods = ["CRDB", "NMB", "VISA CARD", "MASTERCARD"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Payment Details"),
        backgroundColor: const Color(0xFFfd6f3e),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.asset(widget.productImage, height: 200)),
            const SizedBox(height: 20),
            Text("Product: ${widget.productName}", style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text("Price: ${widget.productPrice}", style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFFfd6f3e))),
            Text("Category: ${widget.productCategory}", style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 20),
            const Text("Your Details", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            TextField(controller: nameController, decoration: const InputDecoration(border: OutlineInputBorder(), labelText: "Your Name")),
            const SizedBox(height: 10),
            TextField(controller: emailController, keyboardType: TextInputType.emailAddress, decoration: const InputDecoration(border: OutlineInputBorder(), labelText: "Your Email")),
            const SizedBox(height: 20),
            const Text("Select Payment Method", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            const Text("Mobile Payments:", style: TextStyle(fontWeight: FontWeight.w600)),
            const SizedBox(height: 5),
            Wrap(spacing: 10, children: mobileMethods.map((m) => _paymentOption(m)).toList()),
            const SizedBox(height: 10),
            const Text("Banking Systems:", style: TextStyle(fontWeight: FontWeight.w600)),
            const SizedBox(height: 5),
            Wrap(spacing: 10, children: bankMethods.map((m) => _paymentOption(m)).toList()),
            const SizedBox(height: 20),
            if (mobileMethods.contains(selectedMethod))
              TextField(controller: phoneController, keyboardType: TextInputType.phone, decoration: const InputDecoration(border: OutlineInputBorder(), labelText: "Enter Phone Number", hintText: "0712345678")),
            if (bankMethods.contains(selectedMethod))
              TextField(controller: cardController, keyboardType: TextInputType.number, decoration: const InputDecoration(border: OutlineInputBorder(), labelText: "Enter Card Number", hintText: "16 digits")),
            const SizedBox(height: 10),
            if (selectedMethod.isNotEmpty)
              TextField(controller: pinController, keyboardType: TextInputType.number, obscureText: true, decoration: const InputDecoration(border: OutlineInputBorder(), labelText: "Enter PIN", hintText: "4 digits")),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _showConfirmDialog,
              style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFFfd6f3e), minimumSize: const Size(double.infinity, 50)),
              child: const Text("Pay Now", style: TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }

  Widget _paymentOption(String method) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedMethod = method;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        decoration: BoxDecoration(border: Border.all(color: selectedMethod == method ? const Color(0xFFfd6f3e) : Colors.grey), borderRadius: BorderRadius.circular(8)),
        child: Text(method),
      ),
    );
  }

  void _showConfirmDialog() {
    showDialog(
      context: context,
      builder: (ctx) {
        return AlertDialog(
          title: const Text("Confirm Payment"),
          content: const Text("Do you want to confirm your payment?"),
          actions: [
            TextButton(onPressed: () => Navigator.of(ctx).pop(), child: const Text("Cancel")),
            TextButton(onPressed: () { Navigator.of(ctx).pop(); _confirmPayment(); }, child: const Text("Confirm")),
          ],
        );
      },
    );
  }

  void _confirmPayment() {
    if (nameController.text.isEmpty || emailController.text.isEmpty) { _showMessage("Please enter your name and email", false); return; }
    if (selectedMethod.isEmpty) { _showMessage("Please select a payment method", false); return; }
    if (mobileMethods.contains(selectedMethod) && !_validatePhone(phoneController.text)) { _showMessage("Please enter a valid phone number", false); return; }
    if (bankMethods.contains(selectedMethod) && !_validateCard(cardController.text)) { _showMessage("Please enter a valid 16-digit card number", false); return; }
    if (!_validatePin(pinController.text)) { _showMessage("Please enter a valid 4-digit PIN", false); return; }

    OrderStorage.addOrder(
      userName: nameController.text,
      userEmail: emailController.text,
      productName: widget.productName,
      productCategory: widget.productCategory,
      productPrice: widget.productPrice,
      imageUrl: widget.productImage,
      paymentMethod: selectedMethod,
    );

    _showMessage("Payment successful via $selectedMethod", true);

    nameController.clear();
    emailController.clear();
    phoneController.clear();
    cardController.clear();
    pinController.clear();
  }

  bool _validatePhone(String phone) => RegExp(r'^(06|07)[0-9]{8}$').hasMatch(phone);
  bool _validateCard(String card) => RegExp(r'^[0-9]{16}$').hasMatch(card);
  bool _validatePin(String pin) => RegExp(r'^[0-9]{4}$').hasMatch(pin);

  void _showMessage(String message, bool success) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message), backgroundColor: success ? Colors.green : Colors.red));
  }
}
