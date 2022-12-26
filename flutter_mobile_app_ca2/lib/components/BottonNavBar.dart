import 'package:flutter/material.dart';
import 'package:flutter_mobile_app_ca2/components/MyLocation.dart';
import 'package:flutter_mobile_app_ca2/screens/login/Home/constants.dart';


class BottomNavBar extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: kDefaultPadding*2,
        right: kDefaultPadding*2,
        ),
      height: 80,
      decoration: BoxDecoration(
        boxShadow: [BoxShadow(
          offset: Offset(0, -10),
          blurRadius: 35,
          color: kPrimaryColor.withOpacity(0.38)
        ),
      ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.location_city), 
            onPressed: () { 
              // ignore: prefer_const_constructors
              Navigator.push(context, MaterialPageRoute(builder: ((context) =>mylocation(title: '',)),));
            },
             tooltip: 'Favorities',
             color: Colors.black,
             splashColor: Colors.pink,
            ),
         
          IconButton(
            icon: Icon(Icons.verified_user),
             onPressed: () { },
            tooltip: 'Authorised User',
             color: Colors.black,
             splashColor: Colors.pink,
             ),
        ],
        ),
    );
  }
}

    