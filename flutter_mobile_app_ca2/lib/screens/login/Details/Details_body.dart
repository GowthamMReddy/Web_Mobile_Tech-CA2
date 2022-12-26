
import 'package:flutter/material.dart';
import 'package:flutter_mobile_app_ca2/components/Services.dart';
import 'package:flutter_mobile_app_ca2/screens/login/Home/Homepage.dart';
// ignore: unused_import
import 'package:flutter_mobile_app_ca2/screens/login/Home/constants.dart';
import 'package:quickalert/quickalert.dart';
import 'package:vibration/vibration.dart';

// ignore: camel_case_types
class Reserve_details extends StatelessWidget{
 final Service service;
  
const Reserve_details({Key? key, required this.service}) : super(key: key);
  @override
  Widget build(BuildContext context){
    Size size= MediaQuery.of(context).size;
    return Column(
          children:<Widget> [
  //-------------------------Image--------------------------------
            Container(
              height: MediaQuery.of(context).size.height * 0.38,
              padding: const EdgeInsets.only(bottom: 0),
              width:double.infinity,
              decoration: BoxDecoration(
               color: kPrimaryColor.withOpacity(0.5)
              ),
              child: Image.asset(service.image),
              ),

//---------------------------------------Service Name & Price--------------------------------


              Container(
                alignment: Alignment.center,
                 height: 35,
                 padding: const EdgeInsets.only(left: 10, right: 10),
                width: 400,
            margin: const EdgeInsets.symmetric(horizontal: 40),
                 child: Row(
                  children: <Widget>[
                    RichText(
                    text: TextSpan(
                      children: [
                          TextSpan(text: service.title.toUpperCase(),
                          style: TextStyle(
                          color:Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                      ],                          
                      ),
                      ),
                      const Spacer(),
                      Text(
                        '\£${service.price}',
                        style: TextStyle(color:Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                        )
                      ],
                ),
                decoration: BoxDecoration(
                  color: Colors.orange.withOpacity(0.7)
              ),

              ),
             
             SizedBox(height: size.height*0.01),
    
            Container(
             height: MediaQuery.of(context).size.height * 0.35,
              child: timepicker(),
            ),
    ],
            
    );

           
        
}
}


class timepicker extends StatefulWidget{
 @override 
_timepickerstate createState() => _timepickerstate();

}

class _timepickerstate extends State<timepicker>{

  TimeOfDay time1= TimeOfDay(hour: 12, minute: 12);
DateTime date= DateTime(2022, 12, 25);

void showAlert(){
  
  QuickAlert.show(
    context: context,
    title: "Reserved Successfully!" ,
    text: "Your Time Slot Has Reserved Successfully, Please be on time.",
    type: QuickAlertType.success);
}

@override 
Widget build(BuildContext context){
  Size size=MediaQuery.of(context).size;
return Scaffold(
  body: Center(
    child: Column(
      
      children: [
        SizedBox(height: size.height*0.015),
        Container(
          width: 290,
          child:Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
               const SizedBox(height: 5),
                ElevatedButton( 
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.orange, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),),
                    child: Text('Select Time',style: TextStyle(fontSize: 17, color: Colors.black),),
                   onPressed: () async{
                    TimeOfDay? newtime=await showTimePicker(
                    context: context, 
                    initialTime: time1!,
                    );

                    if (newtime==null)return;

                    setState(() {
                       time1 =newtime!;
                    });

                   },
                ),
               
               Spacer(),

                Text(
                '${time1!.hour}:${time1!.minute}',
                style: const TextStyle(fontSize: 24),),
            ],
          ),
        ),
      
       SizedBox(height: size.height*0.015),          
  
           Container(
            width: 290,
            child: Row(
            mainAxisAlignment: MainAxisAlignment.center,     
            children:<Widget>[
                ElevatedButton( 
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.orange, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),),
                  child: Text('Select Date', style: TextStyle(fontSize: 18, color: Colors.black),),
                  onPressed: () async {
                    DateTime? newdate=await showDatePicker(
                      context: context, 
                      initialDate: date, 
                      firstDate: date, 
                      lastDate:DateTime(2050),
                      );

                      if (newdate==null) return;
                      setState(()=> date=newdate);
                  },
                ),
                Spacer(),

                   Text(
                '${date.year}/${date.month}/${date.day}',
                style: TextStyle(fontSize: 24),),
        
            ],
            ),
            ),  
         
         SizedBox(height: size.height*0.015),

            Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 40, vertical: 5),
            child: ElevatedButton(onPressed: () {
               Vibration.vibrate(pattern: [400,800,400,1000,400,1200]);
               showAlert();
            },
            child: Container(
              alignment: Alignment.center,
              height: 40.0,
              width: size.width*0.64,
              child:Text(" Reserve Slot ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),),
              ),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),),

            ),
           ),

          SizedBox(height: size.height*0.015),

           Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 40, vertical: 5),
            child: ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder:((context) => Homepage())));
            },
            child: Container(
              alignment: Alignment.center,
              height: 40.0,
              width: size.width*0.64,
              child:Text(" Cancel ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),),
              ),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),),

            ),
            ),



      ],
    ),
            

),
  );
}
}