import 'package:flutter/material.dart';
import 'package:flutter_mobile_app_ca2/components/background.dart';

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
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "SIGN IN",
                 style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 36,
                ),
                textAlign: TextAlign.left,
                ),
            ),


            SizedBox(height: size.height*0.03),

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
              alignment: Alignment.centerRight,
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: Text(
                "Forgot Your Passowrd?",
                style:TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color:Colors.white,
                ),
              ),
           ),

           SizedBox(height: size.height*0.03),
           
           Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: ElevatedButton(onPressed: () {
              print("Sign In Successfull");
            },
            child: Container(
              alignment: Alignment.center,
              height: 40.0,
              width: size.width*0.6,
              child:Text("  SIGN IN  ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),),
              ),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),),

            ),
           ),

           Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: Text(
                "Don't Have an Account? Sign Up!",
                 style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 18,
                ),
                textAlign: TextAlign.left,
                ),
            ),


            Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: ElevatedButton(onPressed: () {
            },
            child: Container(
              alignment: Alignment.center,
              height: 40.0,
              width: size.width*0.6,
              child:Text("  SIGN UP  ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),),
              ),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),),

            ),
           ),


           


          ],
        ),

      ),
    );
  }
}