import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 234, 235, 231),
      body: Container(
        margin: const EdgeInsets.only(top: 50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("images/headphones.PNG"),
            
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20.0),
              child: const Text(
                "Explore\nThe Best\nProducts",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 40), 
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                           Container(
              padding: const EdgeInsets.all(30),
              margin: const EdgeInsets.only(right: 20.0),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(120),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6,
                    offset: Offset(0, 3),
                  )
                ],
              ),
              child: const Text(
                "Next",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
