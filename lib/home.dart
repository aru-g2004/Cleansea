import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teamnineapp/why.dart';

import 'HexColor.dart';
import 'MethodsANDLinks.dart';

import 'journey.dart';
import 'login.dart';


/*

App screens
-


 */


class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                bgPic1),
            fit: BoxFit.cover,
          )),
    //  color: HexColor.fromHex('Caf0f8'),
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Buttons('48cae4', context, '/upload' , Icons.add_a_photo),
              Buttons('00b4d8', context, '/leaderboard', Icons.emoji_events_outlined),
              Buttons('0096c7', context, '/reward', Icons.redeem ),
              Buttons('0077b6', context, '/journey', Icons.travel_explore),
            ],
          ),
          SizedBox(height: 25 ,),
          Center(child: Text("Welcome Arushi!", style: Page1style(25))),
          SizedBox(height: 25 ,),
          Post(fam2, 'Matt_I', RandomImage2, 'I was surprised at the amount of\n plastic at a beach in Canada :/'),

          Post(fam1, 'Arita_G', RandomImage1, 'I visited San Jose beach today,\n glad to contribute to Cleansea!'),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FlatButton(
              color:  HexColor.fromHex('Ade8f4'),
              onPressed: () {  },
              child: Text('View More', style:  GoogleFonts.montserrat(
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 15),),),
          ),

        ],
      ),
    );
  }
}

Widget Post(String i , String name, String image, String caption)
{
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Card(
      color: Colors.white,
      child:
      Column(
        children:
            [
        Card(
          color: Colors.white ,
          child: Row(
            children:
                [
            CircleAvatar(backgroundImage: NetworkImage(i),radius: 13,),
            SizedBox(width: 10,),
            Text( name , style:  GoogleFonts.montserrat(
                decoration: TextDecoration.none,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 15),),
      ]
          )
        ),
                 Image(image: NetworkImage(image)),
              SizedBox(
                height: 50,
                child: Row(
                    children:
                    [
                      SizedBox(width: 15 ,),
                     Icon(Icons.favorite, color: HexColor.fromHex('48cae4')),
                      SizedBox(width: 15 ,),
                      Text( caption , style:  GoogleFonts.montserrat(
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 15),),

                    ]
                ),
              ),



        ]
      ),
    ),
  );
}



