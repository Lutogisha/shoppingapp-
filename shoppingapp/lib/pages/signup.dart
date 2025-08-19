import 'package:flutter/material.dart';
import 'package:shoppingapp/pages/login.dart';
import 'package:shoppingapp/widget/support_widget.dart' show AppWidget;
class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0, bottom: 40.0,),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Image.asset("images/login.PNG"),
            Center(
              child: Text("Sign Up", style: 
              AppWidget.semiboldTextFeildStyle(),),
            ),
            SizedBox(height: 20.0,),
        
            Text("Please fill the details below to continue!", style: 
            AppWidget.lightTextFeildStyle(),),

            SizedBox(
              height: 20.0,),
            Text("Name", style: 
            AppWidget.semiboldTextFeildStyle(),),
            
            SizedBox(height: 20.0,),
            Container(
              padding: EdgeInsets.only(left: 20.0,),
              decoration: BoxDecoration(color: Color(0xfff4f5f9), borderRadius: BorderRadius.circular(10)),
              child: TextField(
                decoration: InputDecoration(border: InputBorder.none, hintText: "Email"),
              ),
            ),
        
            SizedBox(
              height: 20.0,),
            Text("Email", style: 
            AppWidget.semiboldTextFeildStyle(),),
            
            SizedBox(height: 20.0,),
            Container(
              padding: EdgeInsets.only(left: 20.0,),
              decoration: BoxDecoration(color: Color(0xfff4f5f9), borderRadius: BorderRadius.circular(10)),
              child: TextField(
                decoration: InputDecoration(border: InputBorder.none, hintText: "Email"),
              ),
            ),
        
           SizedBox(
              height: 20.0,),
            Text("Password", style: 
            AppWidget.semiboldTextFeildStyle(),),
            
            SizedBox(height: 20.0,),
            Container(
              padding: EdgeInsets.only(left: 20.0,),
              decoration: BoxDecoration(color: Color(0xfff4f5f9), borderRadius: BorderRadius.circular(10)),
              child: TextField(
                decoration: InputDecoration(border: InputBorder.none, hintText: "Password"),
              ),
            ),
        
            SizedBox(height: 20.0,),
             Center(
               child: Container(
                width: MediaQuery.of(context).size.width/2,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(8)),
                child: Center(child: Text("SIGN UP", style: TextStyle(color: Colors.blue, fontSize: 10.0, fontWeight: FontWeight.bold),)),
               ),
             ),
             SizedBox(height: 20.0,),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text("Already have an account", style: AppWidget.lightTextFeildStyle(),),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Login()));
                }, 
                child: Text("Sign In", style: TextStyle(color: Colors.green, fontSize: 15.0, fontWeight: FontWeight.bold))),
             ],)
          ],),
        ),
      ),
    );
  }
}