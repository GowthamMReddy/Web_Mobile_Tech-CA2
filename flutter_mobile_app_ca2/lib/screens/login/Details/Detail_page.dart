import 'package:flutter/material.dart';
import 'package:flutter_mobile_app_ca2/components/BottonNavBar.dart';
import 'package:flutter_mobile_app_ca2/screens/login/Details/components/details_body.dart';
import 'package:flutter_mobile_app_ca2/screens/login/Home/Homepage.dart';
import 'package:flutter/src/material/icons.dart';
import 'package:get/get.dart';

class Reserve_Screen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Reserve_details(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

buildAppBar() {
  return AppBar(
    leading: 
      IconButton(onPressed: (){}, icon: const Icon(Icons.chevron_left), color: Colors.black,iconSize:35,),
    title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
       Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 0),
              child: Text(
                "RESERVE SLOT",
                 style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20,
                ),
                textAlign: TextAlign.left,
                ),
            ),
          ],
    ),
    backgroundColor: Colors.orange,
  );
}
          