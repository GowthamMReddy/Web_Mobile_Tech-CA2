import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class mylocation extends StatefulWidget {
  const mylocation({Key? key, required this.title}):super(key: key);
  final String title;
  @override
  State<mylocation>createState() => _mylocationState();
}

class _mylocationState extends State<mylocation> {

  Position? _position;
  var _currentAddress ;



 void _getCurrentLocation() async {
    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    setState(() {
      _position = position;
    });
  }




  
 Future<Position>_determinePosition() async{
  LocationPermission permission;

  permission=await Geolocator.checkPermission();

  if(permission==LocationPermission.denied){
    permission=await Geolocator.requestPermission();
    if(permission==LocationPermission.denied){
      return Future.error("Location access is not provided");
    }
}

 return await Geolocator.getCurrentPosition();
}
   

  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Location"),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children:[
          Container(
                 alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: Text('Salon Location:\n Latitude: 53.2747105, Longitude:-9.0486787' ,style: TextStyle( fontSize: 15, color: Colors.black),),
              ),

              SizedBox(height: size.height*0.01),
    
          (_position !=null? Text('Your Location: '+ _position.toString()): Text('No Location Data ')),

             SizedBox(height: size.height*0.01),
        
              Container(
                 alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: ElevatedButton(
              onPressed: () {
                _getCurrentLocation();
              },  
              child:Text("Location", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white, backgroundColor: Colors.orange),),
               style: ElevatedButton.styleFrom(backgroundColor: Colors.orange, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),),
              ),
              
      ),
      
        ],
      ),
        );
  }


 


}