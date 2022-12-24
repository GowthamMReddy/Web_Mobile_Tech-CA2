import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_mobile_app_ca2/components/background.dart';
import 'package:flutter_mobile_app_ca2/screens/login/Home/constants.dart';
import 'package:flutter_mobile_app_ca2/screens/login/Register/register.dart';
import 'package:flutter_mobile_app_ca2/screens/login/Home/Homepage.dart';

class Reserve_details extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    Size size= MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children:<Widget> [
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              padding: const EdgeInsets.only(bottom: 0),
              width:double.infinity,
              child: Image.asset('assets/images/HairCut_Men.jpg'),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                   bottomRight: Radius.circular(20),                
                 ),
                 color: kPrimaryColor.withOpacity(0.5)
              ),
              ),

              Container(
                alignment: Alignment.center,
                 height: 60,
              padding: const EdgeInsets.only(left: 10, right: 10),
                width: 800,
            margin: EdgeInsets.symmetric(horizontal: 40),
                 child: Row(
                  children: <Widget>[
                    RichText(
                    text: TextSpan(
                      children: [
                          TextSpan(text: "HairCut".toUpperCase(),
                          style: TextStyle(
                          color:Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                      ],                          
                      ),
                      ),
                      const Spacer(),
                      const Text(
                        '£20',
                        style: TextStyle(color:Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                        )
                      ],
                ),
                decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                   bottomRight: Radius.circular(15), 
                  topLeft: Radius.circular(15),
                   topRight: Radius.circular(15),                 
                 ),
                 color: kPrimaryColor.withOpacity(0.5)
              ),

              ),
               
                 
           SizedBox(height: size.height*0.03),
           
           Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: ElevatedButton(onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder:((context) => Homepage())));
            },
            child: Container(
              alignment: Alignment.center,
              height: 40.0,
              width: size.width*0.6,
              child:Text(" Reserve Slot ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),),
              ),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),),

            ),
           ),

            Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder:((context) => Registerpage())));
            },
            child: Container(
              alignment: Alignment.center,
              height: 40.0,
              width: size.width*0.6,
              child:Text(" Cancel ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),),
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
      


           
