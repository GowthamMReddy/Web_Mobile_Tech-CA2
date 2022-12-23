import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobile_app_ca2/components/background.dart';
import 'package:flutter_mobile_app_ca2/screens/login/login.dart';

class Registerpage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    Size size= MediaQuery.of(context).size;

    return Scaffold(
      body: Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 0),
              child: Text(
                "Register",
                 style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 36,
                ),
                textAlign: TextAlign.left,
                ),
            ),


            SizedBox(height: size.height*0.07),

            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "USER NAME",
                  labelStyle: TextStyle(color:Colors.white, fontWeight: FontWeight.bold  ),
                ),
              ),
            ),

    
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "EMAIL",
                  labelStyle: TextStyle(color:Colors.white, fontWeight: FontWeight.bold  ),
                ),
              ),
            ),

            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "PASSWORD",
                  labelStyle: TextStyle(color:Colors.white, fontWeight: FontWeight.bold ),
                ),
                obscureText: true,
              ),
            ),

             Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Confirm PASSWORD",
                  labelStyle: TextStyle(color:Colors.white, fontWeight: FontWeight.bold ),
                ),
                obscureText: true,
              ),
            ),


            
           SizedBox(height: size.height*0.03),
           
            Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: ((context) => loginpage())));
            },
            child: Container(
              alignment: Alignment.center,
              height: 40.0,
              width: size.width*0.6,
              child:Text("  SIGN UP  ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),),
              ),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange, splashFactory:NoSplash.splashFactory, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),),

            ),
           ),

          ],
        ),

      ),
    );
  }
}