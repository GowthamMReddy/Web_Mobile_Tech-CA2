import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../screens/login/Home/constants.dart';


class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: kDefaultPadding/14),
      //it will calculate 20% of total height
    height: size.height*0.22,
    child: Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(
            left: kDefaultPadding,
            right: kDefaultPadding,
            bottom: 50+ kDefaultPadding,
          ),
          height: size.height*0.22-24,
          decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15), 
            bottomRight: Radius.circular(15)
            ),
          ),

          child: Row(
            children:<Widget>[
              Text('CURLS & CUTS',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
             ),
             Spacer(),
             Image.asset("assets/images/HairSalon.png")
            ],

          ),
        ),

        Positioned(
          bottom:40,
          left: 0,
          right: 0,

          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            height: 40,
            decoration: BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0,10),
                  blurRadius: 50,
                  color: kPrimaryColor.withOpacity(0.23),
                ),
              ],
            ),
            child: Row(
              children:<Widget>[
                Expanded(
                  child: TextField(
                  decoration: InputDecoration(
                   hintText: "Search",
                   hintStyle: TextStyle(
                     color: Colors.black
                    ),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                  ),
                ),
                SvgPicture.asset("assets/icons/search.svg"),
              ],
            ),
            ),

          ),
      ],
      ),
    );
  }
}

  