import 'package:flutter/material.dart';
import 'package:shoppingapp/widget/support_widget.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(223, 250, 250, 249),
      body: Container(
        padding: const EdgeInsets.only(top: 50.0, left: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
          Stack(
            children: [ GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
                child: Container(
                  margin: EdgeInsets.only(left: 20.0),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Icon(Icons.arrow_back_ios_new_outlined),
                ),
              ),
              Center(
                child: Image.asset(
                  "images/headphones.PNG", 
                   height: 300,),
              )
           ] 
           ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                ),
                width: MediaQuery.of(context).size.width, child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        Text("Headphones", style: AppWidget.boldTextFeildStyle(),),
                        Text(
                              "\$300",
                              style: TextStyle(
                                color: Color(0xFFfd6f3e), 
                                fontSize: 23.0, 
                                fontWeight: FontWeight.bold),
                            )
                      ],
                    ),
                    SizedBox(height: 20.0,),
                    Text("Details", style: AppWidget.semiboldTextFeildStyle(),),
                    SizedBox(height: 10.0,),
                    Text("The product is very good. It have a 1 year waranty, Headphones come in three main types: over-ear, on-ear, and in-ear. Over-ear headphones are the largest, completely enclosing your ears for superior comfort and excellent noise isolation."),
                    SizedBox(height: 80.0,),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      decoration: BoxDecoration(
                        color: Color(0xFFfd6f3e,), borderRadius: BorderRadius.circular(10),
                      ),
                      width: MediaQuery.of(context).size.width,
                      child: Center(child: Text("Buy Now", style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),)),
                    )
                  ],
                ),),
            )
            
          ],
        ),
      ),
    );
  }
}