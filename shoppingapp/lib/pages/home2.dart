import 'package:flutter/material.dart';
class Home2 extends StatefulWidget {
  const Home2({super.key});

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2f2f2),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
             mainAxisAlignment: MainAxisAlignment.start,
             children: [
            Text("Lutogisha", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                "images/custom.png",
                height: 20,
                width: 20,
                fit: BoxFit.cover,
              ),
            )]
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("")
              ],
            )
          ],
        ),
      ),
    );
  }
}