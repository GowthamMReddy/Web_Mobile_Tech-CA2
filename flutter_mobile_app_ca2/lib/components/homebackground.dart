// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_mobile_app_ca2/components/TitleWithMoreBtn.dart';
import 'package:flutter_mobile_app_ca2/screens/login/Home/constants.dart';
import 'package:flutter_svg/svg.dart';

import 'Header_with_search.dart';

class HomeBackground extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    //it will give us total height and width of our screen
    Size size=MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          // ignore: prefer_const_constructors
          TitleWithMoreBtn(title: "Mens Service"),

          Container(
            margin: EdgeInsets.only(
              left: kDefaultPadding, 
              top: kDefaultPadding/2,
              bottom: kDefaultPadding*2.5,
              ),
            width: size.width*0.4,
            child: Column(
              children: <Widget>[
                Image.asset("assets/images/HairCut_Men.jpg"),
                Container(
                 padding: EdgeInsets.all(kDefaultPadding/2),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(0.23)
                    ),
                    ],
                    ),

                    child: Row(
                      children: <Widget>
                      [RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(text: "Reserve Slot\n".toUpperCase(),
                            //style: Theme.of(context).textTheme.button,
                            style: TextStyle(color: Colors.black),
                            ),
                            TextSpan(text: "Mens Haircut".toUpperCase(),
                            style: TextStyle(
                              color:Colors.black.withOpacity(0.7),
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                            ),
                            ),
                          ],                          
                          ),
                          ),
                          ],
                    ),
                    ),
            ],
            ),
          ),
        ],
    
      ),
    );
  }
}

