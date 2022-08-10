import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'HexColor.dart';
import 'MethodsANDLinks.dart';
import 'login.dart';


class reward extends StatefulWidget {
  const reward({Key? key}) : super(key: key);

  @override
  _rewardState createState() => _rewardState();
}

class _rewardState extends State<reward> {
  int num = 199;
  int level = 19;
  int rewards = 10;
  int hours = 9;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                bgPic1),
            fit: BoxFit.cover,
          )),

      child:
      ListView(
       children: [
         SizedBox(height: 25 ,),
         Center(child: Row( children: [FlatButton(
           child: Icon(Icons.arrow_back, color: HexColor.fromHex('03045e'),),
           onPressed: (){
             Navigator.pushNamed(context, '/home');
           },
         ), SizedBox(width: 20,), Text("My Rewards", style: Page1style(25))])),
         SizedBox(height: 60 ,),
      CarouselSlider(
        options: CarouselOptions(
          initialPage: 0,
          height: 50,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlayInterval: const Duration(seconds: 5),
          autoPlay: true,
          enlargeCenterPage: true,
          autoPlayCurve: Curves.decelerate,
          scrollDirection: Axis.horizontal,
        ),
        items: [
          RewardSilder(Icons.image, 'Pictures: ', 'Ade8f4', num),
          RewardSilder(Icons.emoji_events, 'Level: ', '00b4d8', level),
          RewardSilder(Icons.redeem, 'Products: ', '0077b6', rewards),
          RewardSilder(Icons.volunteer_activism, 'Volunteer Hours: ', 'Caf0f8', hours)
       ],
      ),
         SizedBox(height: 40,),
     FlatButton(

       onPressed: () {
         showDialog(
           context: context,
           builder: (BuildContext context) => _buildPopupDialog(context),
         );
         setState(() { hours = 10;
         level = 20;
         num = 200;
         });
       },
       child:  Icon(Icons.redeem, size: 100,  color: HexColor.fromHex('03045e'),),),
         SizedBox(height: 25,),
         Center(child: Text("Press the gift to redeem your prize!", style: Page1style(15))),
SizedBox(height: 40) ,
        Card(
            color: HexColor.fromHex('Caf0f8'),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: Text("Rewards Log: ", style: Page1style(20))),
              ],
            )

        ),
         RewardLog('9th Aug 22', 'Volunteer Hour'),
         RewardLog('5th Jul 22', 'T-shirt'),
         RewardLog('4th Jun 22', 'Reusable Box'),
         RewardLog('1st Mar 22', 'Volunteer Hour'),
RewardLog('10th Jan 22', 'Volunteer Hour'),
         RewardLog('9th Jan 22', 'Volunteer Hour'),
         RewardLog('1st Jan 22', 'Volunteer Hour'),
         RewardLog('10th Dec 21', 'Volunteer Hour'),

//redeem
    ]));
  }
}

Widget RewardSilder(IconData id, String what, String color, int num)
{
  String Num = num.toString();

  return Card(
    color: HexColor.fromHex(color),
    child: Row(
      children: [
        SizedBox(width: 10,),
      Icon(id, size: 30,  color: HexColor.fromHex('023e8a'),),
      SizedBox(width: 10,),
      Text( what + " " + Num, style:  GoogleFonts.montserrat(
          decoration: TextDecoration.none,
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 20),),
    ]
    ),
  );
}


Widget _buildPopupDialog(BuildContext context) {
  return new AlertDialog(
    title: Text('Choose what gift you would like!' , style: Page1style(20)),
    content: new Column(
      children: <Widget>[
        SizedBox(height: 40,),
        SizedBox(
          height: 60,
          width: 250,
          child: FlatButton(
              color: HexColor.fromHex('Caf0f8'),
              onPressed: () {
                Navigator.of(context).pop(
                );
              },
              child: Column( children: [
                SizedBox(width: 10,),
                Icon(Icons.volunteer_activism),
                SizedBox(width: 10,),
                Text('1 volunteer hour', style: Page1style(15)),
              ] )
          ),
        ),
        Text('(will be added to your account now!)', style: Page1style(10)),
        SizedBox(height: 40,),
        SizedBox(
          height: 60,
          width: 250,
          child: FlatButton(
              color: HexColor.fromHex('Caf0f8'),
              onPressed: () {
                Navigator.of(context).pop();

              },
              child: Row( children: [
                SizedBox(width: 10,),
                Icon(Icons.inventory),
                SizedBox(width: 10,),
                Text('1 reusable straw' ,style: Page1style(15)),
              ] )
          ),
        ),
        Text('(will be delivered to your home address within 15 days)', style: Page1style(10)),

        SizedBox(width: 10,),

        Column(
          children: [



          ],
        )


      ],
    ),
  );
}


Widget RewardLog(String date, String type)
{
  return Card(
    color: HexColor.fromHex('Caf0f8'),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(date + ' | ', style: Page1style(15)),
        SizedBox(width: 10,),
        Text(type, style: Page1style(15)),
      ],
    )
    
  );
      
}