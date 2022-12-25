// ignore_for_file: camel_case_types


import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_mobile_app_ca2/screens/login/Home/constants.dart';
import 'package:flutter_mobile_app_ca2/screens/login/Register/register.dart';
import 'package:flutter_mobile_app_ca2/screens/login/Home/Homepage.dart';
import 'package:quickalert/quickalert.dart';

class Reserve_details extends StatefulWidget{
  Reserve_details1 createState()=>Reserve_details1();

}

class Reserve_details1 extends State<Reserve_details>{
  DateTime date= DateTime(2022, 12, 25);
  TimeOfDay? time= const TimeOfDay(hour: 12, minute: 12);

void showAlert(){
  QuickAlert.show(
    context: context,
    title: "Reserved Successfully!" ,
    text: "Your Time Slot Has Reserved Successfully, Please be on time.",
    type: QuickAlertType.success);
}

  @override
  Widget build(BuildContext context){
    Size size= MediaQuery.of(context).size;


    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children:<Widget> [

//---------------------------------------Image--------------------------------


            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              padding: const EdgeInsets.only(bottom: 0),
              width:double.infinity,
              decoration: BoxDecoration(
               color: kPrimaryColor.withOpacity(0.5)
              ),
              child: Image.asset('assets/images/HairCut_Men.jpg'),
              ),

//---------------------------------------Service Name & Price--------------------------------


              Container(
                alignment: Alignment.center,
                 height: 40,
                 padding: const EdgeInsets.only(left: 10, right: 10),
                width: 400,
            margin: EdgeInsets.symmetric(horizontal: 40),
                 child: Row(
                  children: <Widget>[
                    RichText(
                    text: TextSpan(
                      children: [
                          TextSpan(text: "HairCut".toUpperCase(),
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
                      const Text(
                        '£20',
                        style: TextStyle(color:Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                        )
                      ],
                ),
                decoration: BoxDecoration(
                  color: Colors.orange.withOpacity(0.7)
              ),

              ),
            
             SizedBox(height: size.height*0.02),

//---------------------------------------Select Date--------------------------------


           Container(
            width: 280,
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

            SizedBox(height: size.height*0.02),

//---------------------------------------Select Time--------------------------------


            Container(
            width: 150,
            child: Row(
            mainAxisAlignment: MainAxisAlignment.center,     
            children:<Widget>[
                FloatingActionButton( 
                  backgroundColor: Colors.orange,
                  splashColor: Colors.pink,
                  child: const Icon(
                    Icons.access_time_outlined,
                    color: Colors.black,
                  ),
                  onPressed: () async {
                    TimeOfDay? newtime=await showTimePicker(
                      context: context, 
                      initialTime:time!,
                      );
                      

                      if (newtime != null) {
                      setState(() {
                        time=newtime;
                      });
                      }
                  },
                ),
                Spacer(),
                   Text(
                '${time!.hour.toString()}:${time!.minute.toString()}',
                style: const TextStyle(fontSize: 24),),
        
            ],
            ),
            ),      
                 
           SizedBox(height: size.height*0.02),

//---------------------------------------Reserve Slot Button--------------------------------
           
           Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 40, vertical: 5),
            child: ElevatedButton(onPressed: () {
               showAlert();
            },
            child: Container(
              alignment: Alignment.center,
              height: 40.0,
              width: size.width*0.6,
              child:Text(" Reserve Slot ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),),
              ),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),),

            ),
           ),

//---------------------------------------Cancel Button--------------------------------

            Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 40, vertical: 5),
            child: ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder:((context) => Reserve_details())));
            },
            child: Container(
              alignment: Alignment.center,
              height: 40.0,
              width: size.width*0.6,
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