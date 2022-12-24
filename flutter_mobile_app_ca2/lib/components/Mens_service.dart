import 'package:flutter/material.dart';
import 'package:flutter_mobile_app_ca2/screens/login/Details/Detail_page.dart';
import 'package:flutter_mobile_app_ca2/screens/login/Home/constants.dart';
import 'package:flutter_mobile_app_ca2/components/homebackground.dart';


class MenService extends StatelessWidget {
  const MenService({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Mens_Service(
            image: "assets/images/HairCut_Men.jpg",
            title: "Men's Haircut",
            price: 20,
          ),
          Mens_Service(
            image: "assets/images/Beard_Grooming.jpg",
            title: "Beard Trim",
            price: 20,
          ),
          Mens_Service(
            image: "assets/images/Men_Facial_Massaging.jpg",
            title: "Facial Massage",
            price: 25,
          ),
          Mens_Service(
            image: "assets/images/Men_HairColor.jpg",
            title: "Men's HairDye",
            price: 15,
          ),
        ],
      ),
    );
  }
}

class Mens_Service extends StatelessWidget {
  const Mens_Service({
    Key? key, required this.image, required this.title, required this.price,
  }) : super(key: key);
  
  final String image, title;
  final int price;



  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding, 
        top: kDefaultPadding/2,
        bottom: kDefaultPadding,
        ),
      width: size.width*0.4,
      child: Column(
        children: <Widget>[
          Image.asset(image),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Reserve_Screen(),),);
            },
            child: Container(
             padding: EdgeInsets.all(kDefaultPadding/2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft:Radius.circular(10),
                  bottomRight:Radius.circular(10)
                  ),
                boxShadow: [BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 50,
                  color: kPrimaryColor.withOpacity(0.23)
                ),
                ],
                ),
          
                child: Row(
                  children: <Widget>[
                    RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(text: "Reserve Slot\n".toUpperCase(),
                        style: Theme.of(context).textTheme.button,
                        //style: TextStyle(color: Colors.black),
                        ),
                      
                        TextSpan(text: "$title".toUpperCase(),
                        style: TextStyle(
                          color:Colors.black.withOpacity(0.7),
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                        ),
                        ),
                      ],                          
                      ),
                      ),
                      Spacer(),
                      Text(
                        '\£$price',
                        style: TextStyle(color:Colors.black),
                        )
                      ],
                ),
                ),
          ),
      ],
      ),
    );
  }
}

