import 'package:flutter/material.dart';
import 'package:flutter_mobile_app_ca2/components/homebackground.dart';
import '../screens/login/Home/constants.dart';



class TitleWithMoreBtn extends StatelessWidget {
  const TitleWithMoreBtn({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
      child: Row(
        children: <Widget>[
          TitleWithCustomUnderline(text: title),
        ],
      ),
    );
  }
}

class TitleWithCustomUnderline extends StatelessWidget {
  const TitleWithCustomUnderline({
    Key? key,
    required this. text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding/15),
            child: Text(
              text,
              style: TextStyle(
                fontSize: 20, 
                fontWeight: FontWeight.bold,
                color: Colors.black,
                ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 2,
            right: 0,
              child: Container(
                margin: EdgeInsets.only(right: kDefaultPadding/15),
                height: 5,
                color: Colors.black.withOpacity(0.2),
              ),
          ),
        ],
      ),

    );
  }
}
