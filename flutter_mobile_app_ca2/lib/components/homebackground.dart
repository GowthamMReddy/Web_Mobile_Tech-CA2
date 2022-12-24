// ignore_for_file: non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:flutter_mobile_app_ca2/components/Mens_service.dart';
import 'package:flutter_mobile_app_ca2/components/TitleWithMoreBtn.dart';
import 'package:flutter_mobile_app_ca2/screens/login/Home/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_mobile_app_ca2/components/WomenService.dart';

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
          TitleWithMoreBtn(title: "Men's Service"),
          MenService(),
          TitleWithMoreBtn(title: "Women's Service"),
          WomenService(),
          SizedBox(height: kDefaultPadding),
          
        ],
    
      ),
    );
  }
}

