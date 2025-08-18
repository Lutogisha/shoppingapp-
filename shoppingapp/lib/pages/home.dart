import 'package:flutter/material.dart';
import 'package:shoppingapp/widget/support_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List Categories =[
"images/headphone.PNG",
"images/headphone.PNG",
"images/headphone.PNG",
"images/headphone.PNG",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2f2f2),
      body: Container(
        margin: const EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hey, Lutogisha",
                      style: AppWidget.boldTextFeildStyle(),
                    ),
                    const SizedBox(height: 8),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        "images/headphones.PNG",
                        height: 70,
                        width: 70,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "Good Morning",
                      style: AppWidget.lightTextFeildStyle(),
                    ),

                    SizedBox(height: 30.0,),
                    Container(
                      padding: EdgeInsets.only(left: 20.0),
                      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                      width: MediaQuery.of(context).size.width,
                      child: TextField(
                        decoration: InputDecoration(border: InputBorder.none, hintText: "Search Products", hintStyle: AppWidget.lightTextFeildStyle(), prefix: Icon(Icons.search), iconColor: Colors.black),

                      )
                    ),
                    SizedBox(
                      height: 20.0,
                    ),

                    Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [                    
                        Text(
                          "Categories",
                          style: AppWidget.semiboldTextFeildStyle(),
                        ),

                        Text(
                          "See all",
                          style: TextStyle(color: Color(0xFFfd6f3e), fontSize: 18.0, fontWeight:  FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20.0,),
                  
                   Row(
                   children: [
                    Container(
                      height: 130.0,
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.only(right: 20.0),
                    decoration: BoxDecoration( color: Color(0xFFfd6f3e), borderRadius: BorderRadius.circular(10),
      ),
    
                    child: Center(child: Text("All", style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),))
                    
                    ),
                       Expanded(
                         child: Container(
                          
                          margin: EdgeInsets.only(left: 20.0),
                          height: 130.0,
                          child: ListView.builder(
                            padding: EdgeInsets.zero,
                            itemCount: Categories.length,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context,index){
                            return CategoryTile(image: Categories[index]);
                          }),
                         ),
                       ),
                     ],
                   ),
                   SizedBox(height: 20.0,),
                   Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [                    
                        Text(
                          "All products",
                          style: AppWidget.semiboldTextFeildStyle(),
                        ),

                        Text(
                          "See all",
                          style: TextStyle(color: Color(0xFFfd6f3e), fontSize: 18.0, fontWeight:  FontWeight.bold),
                        )
                      ],
                    ),

                   SizedBox(height: 20.0,),
                   Container(
                    height: 240.0,
                     child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                                       children: [
                      Container(
                        margin: EdgeInsets.only(right: 20.0),
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                      child: Column(children: [
                        Image.asset("images/headphone.PNG", height: 150.0, width: 150.0, fit: BoxFit.cover,),
                          Text("Headphone", style: AppWidget.semiboldTextFeildStyle(), ),
                          SizedBox(height: 50.0,),
                          Row(
                
                            children: [
                            Text("\$100",
                            style: TextStyle(
                              color: Color(0xFFfd6f3e), 
                              fontSize: 22.0, fontWeight:  
                              FontWeight.bold),),
                            SizedBox(width: 50.0,),
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(color: Color(0xFFfd6f3e), borderRadius: BorderRadius.circular(7)),
                              child: Icon(Icons.add, color: Colors.white,))
                          ],)
                      ],),
                                       ),

                            Container(
                              margin: EdgeInsets.only(right: 20.0),
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                      child: Column(children: [
                        Image.asset("images/headphone.PNG", height: 150.0, width: 150.0, fit: BoxFit.cover,),
                          Text("Apple Watch", style: AppWidget.semiboldTextFeildStyle(), ),
                          SizedBox(height: 50.0,),
                          Row(
                
                            children: [
                            Text("\$300",
                            style: TextStyle(
                              color: Color(0xFFfd6f3e), 
                              fontSize: 22.0, fontWeight:  
                              FontWeight.bold),),
                            SizedBox(width: 50.0,),
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(color: Color(0xFFfd6f3e), borderRadius: BorderRadius.circular(7)),
                              child: Icon(Icons.add, color: Colors.white,))
                          ],)
                      ],),
                                       ),

                                        Container(
                                          margin: EdgeInsets.only(right: 20.0),
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                      child: Column(children: [
                        Image.asset("images/headphone.PNG", height: 150.0, width: 150.0, fit: BoxFit.cover,),
                          Text("Laptops", style: AppWidget.semiboldTextFeildStyle(), ),
                          SizedBox(height: 50.0,),
                          Row(
                
                            children: [
                            Text("\$300",
                            style: TextStyle(
                              color: Color(0xFFfd6f3e), 
                              fontSize: 22.0, fontWeight:  
                              FontWeight.bold),),
                            SizedBox(width: 50.0,),
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(color: Color(0xFFfd6f3e), borderRadius: BorderRadius.circular(7)),
                              child: Icon(Icons.add, color: Colors.white,))
                          ],)
                      ],),
                                       ),
                                       
                                       ],
                     ),
                   )

                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryTile extends StatelessWidget {
  String image;
  CategoryTile({required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(right: 20.0),
      decoration: BoxDecoration( color: Colors.white, borderRadius: BorderRadius.circular(10),
      ),
    
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Image.asset(image, 
        height: 50.0,
        width: 50.0, 
        fit: BoxFit.cover,),
       
        Icon(Icons.arrow_forward)
      ],),
    );
  }
}