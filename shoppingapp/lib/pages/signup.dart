import 'package:flutter/material.dart';
import 'package:shoppingapp/pages/login.dart';
import 'package:shoppingapp/widget/support_widget.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  "lib/images/login.PNG",
                  height: 200,
                ),
              ),

              const SizedBox(height: 30.0),

              Center(
                child: Text(
                  "Sign Up",
                  style: AppWidget.semiboldTextFeildStyle().copyWith(
                    fontSize: 28,
                    color: Colors.black87,
                  ),
                ),
              ),

              const SizedBox(height: 10.0),

              Center(
                child: Text(
                  "Please fill in the details below to create your account",
                  style: AppWidget.lightTextFeildStyle(),
                  textAlign: TextAlign.center,
                ),
              ),

              const SizedBox(height: 40.0),

              Text("Name", style: AppWidget.semiboldTextFeildStyle()),
              const SizedBox(height: 10.0),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                  color: const Color(0xfff4f5f9),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Enter your name",
                    icon: Icon(Icons.person_outline),
                  ),
                ),
              ),

              const SizedBox(height: 20.0),

              Text("Email", style: AppWidget.semiboldTextFeildStyle()),
              const SizedBox(height: 10.0),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                  color: const Color(0xfff4f5f9),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Enter your email",
                    icon: Icon(Icons.email_outlined),
                  ),
                ),
              ),

              const SizedBox(height: 20.0),

              Text("Password", style: AppWidget.semiboldTextFeildStyle()),
              const SizedBox(height: 10.0),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                  color: const Color(0xfff4f5f9),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Enter your password",
                    icon: Icon(Icons.lock_outline),
                  ),
                ),
              ),

              const SizedBox(height: 30.0),

              Center(
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      elevation: 3,
                    ),
                    onPressed: () {
                   
                    },
                    child: const Text(
                      "SIGN UP",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 30.0),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account? ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Login()),
                      );
                    },
                    child: const Text(
                      "Sign In",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
