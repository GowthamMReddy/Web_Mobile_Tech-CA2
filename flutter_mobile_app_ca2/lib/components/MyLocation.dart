import 'package:flutter/material.dart';
import 'package:flutter_mobile_app_ca2/components/background.dart';
import 'package:flutter_mobile_app_ca2/screens/login/Home/constants.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geolocator_android/geolocator_android.dart';
import 'package:flutter_mobile_app_ca2/components/BottonNavBar.dart';

class mylocation extends StatefulWidget {
  const mylocation({Key? key, required this.title}):super(key: key);
  final String title;
  @override
  State<mylocation>createState() => _mylocationState();
}

class _mylocationState extends State<mylocation> {
  var _currentPosition ;
  var _currentAddress ;
   

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Location"),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (_currentAddress != null) Text(
              _currentAddress
            ),
            ElevatedButton(
              child: Container(
                width: 200,
                color: Colors.orange,
              alignment: Alignment.center,
              child:Text(" Get Location ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white, backgroundColor: Colors.orange),),
              ),
              onPressed: () {
                _getCurrentLocation();
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),),
                     ),
          ],
        ),
      ),
    );
  }


  _getCurrentLocation() {
    Geolocator
      .getCurrentPosition(desiredAccuracy: LocationAccuracy.best, forceAndroidLocationManager: true)
      .then((Position position) {
        setState(() {
          _currentPosition = position;
          _getAddressFromLatLng();
        });
      }).catchError((e) {
        print(e);
      });
  }

  _getAddressFromLatLng() async {
    try {
    
      var latitude;
      var longitude;
      List<Placemark> placemarks = await placemarkFromCoordinates(
        _currentPosition.latitude,
        _currentPosition.longitude
      );

      Placemark place = placemarks[0];

      setState(() {
        var _currentAddress = "${place.locality}, ${place.postalCode}, ${place.country}";
      });
    } catch (e) {
      print(e);
    }
  }
  }
