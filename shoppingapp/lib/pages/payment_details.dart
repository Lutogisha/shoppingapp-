import 'package:flutter/material.dart';

class PaymentDetails extends StatefulWidget {
  final String productName;
  final String productPrice;

  const PaymentDetails({
    super.key,
    required this.productName,
    required this.productPrice,
  });

  @override
  State<PaymentDetails> createState() => _PaymentDetailsState();
}

class _PaymentDetailsState extends State<PaymentDetails> {
  String? selectedMethod;
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController cardController = TextEditingController();
  final TextEditingController pinController = TextEditingController();

  final List<String> mobileMethods = ["M-PESA", "AIRTEL MONEY", "MIX BY YAS", "HALO PESA"];
  final List<String> bankMethods = ["CRDB", "NMB", "VISA CARD", "MASTERCARD"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Payment Details"),
        backgroundColor: const Color(0xFFfd6f3e),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Product: ${widget.productName}",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              "Price: ${widget.productPrice}",
              style: const TextStyle(fontSize: 18, color: Colors.orange),
            ),
            const SizedBox(height: 20),
            const Text(
              "Select Payment Method",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: [
                  ...mobileMethods.map((method) => PaymentMethodTile(
                        methodName: method,
                        icon: Icons.phone_android,
                        onTap: () {
                          setState(() {
                            selectedMethod = method;
                          });
                          _showPaymentDialog(context, method, true);
                        },
                      )),
                  ...bankMethods.map((method) => PaymentMethodTile(
                        methodName: method,
                        icon: Icons.credit_card,
                        onTap: () {
                          setState(() {
                            selectedMethod = method;
                          });
                          _showPaymentDialog(context, method, false);
                        },
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showPaymentDialog(BuildContext context, String method, bool isMobile) {
    phoneController.clear();
    cardController.clear();
    pinController.clear();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Pay with $method"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (isMobile)
                TextField(
                  controller: phoneController,
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                    labelText: "Enter Phone Number",
                    hintText: "e.g. 0712345678",
                  ),
                ),
              if (!isMobile)
                TextField(
                  controller: cardController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: "Enter Card Number",
                    hintText: "16 digits",
                  ),
                ),
              const SizedBox(height: 10),
              TextField(
                controller: pinController,
                obscureText: true,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Enter Secret PIN",
                  hintText: "4 digits",
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Cancel"),
            ),
            ElevatedButton(
              onPressed: () {
                if (_validateInputs(isMobile)) {
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Payment successful via $method"),
                      backgroundColor: Colors.green,
                    ),
                  );
                }
              },
              style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFFfd6f3e)),
              child: const Text("Confirm Payment"),
            ),
          ],
        );
      },
    );
  }

  bool _validateInputs(bool isMobile) {
    if (isMobile) {
      if (phoneController.text.isEmpty ||
          !RegExp(r'^(06|07)[0-9]{8}$').hasMatch(phoneController.text)) {
        _showError("Please enter a valid phone number (10 digits starting with 06 or 07)");
        return false;
      }
    } else {
      if (cardController.text.isEmpty || !RegExp(r'^[0-9]{16}$').hasMatch(cardController.text)) {
        _showError("Please enter a valid 16-digit card number");
        return false;
      }
    }
    if (pinController.text.isEmpty || !RegExp(r'^[0-9]{4}$').hasMatch(pinController.text)) {
      _showError("Please enter a valid 4-digit PIN");
      return false;
    }
    return true;
  }

  void _showError(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.red,
      ),
    );
  }
}

class PaymentMethodTile extends StatelessWidget {
  final String methodName;
  final IconData icon;
  final VoidCallback onTap;

  const PaymentMethodTile({
    super.key,
    required this.methodName,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Icon(icon, color: const Color(0xFFfd6f3e)),
        title: Text(methodName),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: onTap,
      ),
    );
  }
}
