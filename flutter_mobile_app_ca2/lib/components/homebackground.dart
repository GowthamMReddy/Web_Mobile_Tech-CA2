// ignore_for_file: non_constant_identifier_names


import 'package:flutter/material.dart';
import 'package:flutter_mobile_app_ca2/components/TitleWithMoreBtn.dart';
import 'package:flutter_mobile_app_ca2/screens/login/Home/constants.dart';
import 'package:flutter_mobile_app_ca2/components/Services.dart';
import 'package:flutter_mobile_app_ca2/screens/login/Details/Detail_page.dart';


import 'Header_with_search.dart';

class HomeBackground extends StatelessWidget{
  

  @override
  Widget build(BuildContext context){
    final Service service;
    //it will give us total height and width of our screen
    Size size=MediaQuery.of(context).size;
    return Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          // ignore: prefer_const_constructors
          TitleWithMoreBtn(title: "Service's Offered"),
          Expanded(
            child: Padding(padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: GridView.builder(
              itemCount: services.length,
              gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.55,
                mainAxisSpacing: kDefaultPadding,
                crossAxisSpacing: kDefaultPadding,
              ), 
              itemBuilder: 
              (context, index) => MenService( service: services[index],
                press:() => Navigator.push(context, 
                  MaterialPageRoute(
                  builder: (context)=>Reserve_Screen(
                    service: services[index],
                    ),
                )),
                )),
              ),
              ),
      
  
          
          //TitleWithMoreBtn(title: "Women's Service"),
          //WomenService(),
          //SizedBox(height: kDefaultPadding),
          
        ],
    
    );
  }
}

class MenService extends StatelessWidget {
  final Service service;
  final VoidCallback press;
  const MenService({
    Key? key,
    required this.service, required this.press,
      }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(kDefaultPadding),
            //height: 280,
            //width: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Image.asset(service.image),  
          ),
           Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding/1.5),
            child: Text(
              service.title,
              style: TextStyle(color: Colors.black),
            ),
           ),
           Text(
              "\£${service.price}",
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          
                
      ],
      ),
    );
  }
}

