import 'package:flutter/material.dart';

class AppWidget {

  static TextStyle boldTextFeildStyle(){

    return TextStyle(
      color: Colors.black, 
        fontSize: 30.0, fontWeight: 
        FontWeight.bold);
  
  }

  static TextStyle lightTextFeildStyle(){
    return TextStyle(
      color: const Color.fromARGB(255, 26, 23, 23), fontSize: 30.0, fontWeight: 
FontWeight.bold
    );
  }

  static TextStyle semiboldTextFeildStyle(){
    return TextStyle(
      color: Colors.black, 
        fontSize: 20.0, fontWeight: 
        FontWeight.bold);
  }
}