import 'package:flutter/material.dart';
import 'package:flutter_mobile_app_ca2/screens/login/Home/constants.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

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
            icon: Icon(Icons.favorite), 
            onPressed: () { },
             tooltip: 'Favorities',
             color: Colors.black,
             splashColor: Colors.pink,
            ),
          IconButton(
            icon: Icon(Icons.contacts),
             onPressed: () { },
              tooltip: 'Contact Us',
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

    