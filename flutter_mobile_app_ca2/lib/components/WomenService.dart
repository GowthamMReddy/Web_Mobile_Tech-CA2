import 'package:flutter/material.dart';
import 'package:flutter_mobile_app_ca2/screens/login/Home/constants.dart';
import 'package:flutter_mobile_app_ca2/components/homebackground.dart';


class WomenService extends StatelessWidget {
  const WomenService({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          Women_Service(
            images: "assets/images/HairCut_Women.jpg",
            title: "Women Haircut",
            price: 20,
          ),
          Women_Service(
            images: "assets/images/HairStraightening_coloring.jpg",
             title: "Women Hairdye",
            price: 20,
          ),
          Women_Service(
            images: "assets/images/NailArt.jpg",
             title: "Nail Art",
            price: 20,
          ),
          Women_Service(
            images: "assets/images/Facial_Massaging.jpg",
             title: "Facial Massage",
            price: 20,
          ),
        ],
      ),
    );
  }
}

class Women_Service extends StatelessWidget {
  const Women_Service({
     Key? key, required this.images, required this.title, required this.price,
  }) : super(key: key);
  
  final String images, title;
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
          Image.asset(images),
          GestureDetector(
            onTap: () {},
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

