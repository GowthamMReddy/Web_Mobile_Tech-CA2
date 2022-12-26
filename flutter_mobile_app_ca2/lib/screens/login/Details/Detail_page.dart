// ignore: file_names
// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_mobile_app_ca2/components/BottonNavBar.dart';
import 'package:flutter_mobile_app_ca2/components/Services.dart';
import 'package:flutter_mobile_app_ca2/screens/login/Details/details_body.dart';
import 'package:flutter_mobile_app_ca2/screens/login/Details/Detail_page.dart';


// ignore: camel_case_types
class Reserve_Screen extends StatelessWidget {
final Service service;
  const Reserve_Screen({Key? key,  required this.service}):super(key: key);

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      appBar: buildAppBar(),
      body:  Reserve_details(service: service),
      bottomNavigationBar: BottomNavBar(),
    );
}

buildAppBar() {

  return AppBar(
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
    foregroundColor: Colors.black,
  );
} 
} 