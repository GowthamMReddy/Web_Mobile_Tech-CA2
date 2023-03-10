import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_mobile_app_ca2/components/BottonNavBar.dart';
import 'package:flutter_mobile_app_ca2/components/Header_with_search.dart';
import 'package:flutter_mobile_app_ca2/screens/login/Home/constants.dart';
import 'package:flutter_mobile_app_ca2/screens/login/login.dart';
import 'package:flutter_mobile_app_ca2/components/homebackground.dart';

class Homepage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: buildAppBar(),
      body: HomeBackground(),
      bottomNavigationBar: BottomNavBar(),
    );
  }



  AppBar buildAppBar(){
        return AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () { },
          iconSize: 50,
          tooltip: 'menu',
          color: Colors.black,
          splashColor: Colors.pink,),
          backgroundColor: Colors.orange,
      );

  }
}

