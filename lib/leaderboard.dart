import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teamnineapp/loading.dart';
import 'package:teamnineapp/why.dart';
import 'HexColor.dart';
import 'MethodsANDLinks.dart';
import 'login.dart';
import 'package:flutter_emoji/flutter_emoji.dart';


class leaderboard extends StatefulWidget {
  const leaderboard({Key? key}) : super(key: key);

  @override
  _leaderboardState createState() => _leaderboardState();
}

class _leaderboardState extends State<leaderboard> {

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  bgPic1),
              fit: BoxFit.cover,
            )),
     // color: HexColor.fromHex('00b4d8'),
      child:
          ListView(
            children: [
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.emoji_events_outlined, size: 40,  color: HexColor.fromHex('03045e'),),
                  SizedBox(width: 15,),
                  Text("Leaderboard!", style: Page1style(30))
                ],),              SizedBox(height: 30,),
               Padding(
                 padding: const EdgeInsets.all(10.0),
                 child: Card(
                  color: HexColor.fromHex('Caf0f8'),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                        child: Card(
                          color: HexColor.fromHex('Caf0f8'),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.people, size: 30,  color: HexColor.fromHex('03045e'),),
                              SizedBox(width: 15,),
                              Text("Friend Leaderboard!", style: Page1style(15))
                            ],),
                        ),),
                      FirstLine(),
                      entry('Ade8f4' , true, '#D6AF36', '1', fam1, 'Arita_G', '360', '36', flag1),
                      entry('Ade8f4', true, '#D7D7D7', '2', fam2 , 'Matt_I', '240', '24', flag5),
                      entry( '00b4d8', true, '#824A02', '3', meRank3, 'Arushi_G', '200', '20', flag1),
                      entry('Ade8f4' , true, '#Ade8f4', '4', fam4, 'Mansi_B', '180', '18', flag2),
                      entry('Ade8f4', true, '#Ade8f4', '5', fam5 , 'Rajan_I', '100', '10', flag2),

                    ],
                  ),
              ),
               ),

              SizedBox(height: 50,),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: HexColor.fromHex('Caf0f8'),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                        child: Card(
                          color: HexColor.fromHex('Caf0f8'),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.public, size: 30,  color: HexColor.fromHex('03045e'),),
                              SizedBox(width: 15,),
                              Text("Global Leaderboard!", style: Page1style(15))
                            ],),
                        ),),
                      FirstLine(),
                      entry('Ade8f4' , true, '#D6AF36', '1', global1, 'Rosa_B', '630', '63', flag1),
                      entry('Ade8f4', true, '#D7D7D7', '2', global2 , 'Lewis_I', '500', '50' , flag5),
                      entry( 'Ade8f4', true, '#824A02', '3', global3, 'Matt_H', '450', '45', flag6),
                      entry('Ade8f4' , true, '#Ade8f4', '4', global4, 'Canel_K', '390', '39', flag4),
                      entry('00b4d8', true, '#Ade8f4', '9', meRank3, 'Arushi_G', '200', '20' , flag1),

                    ],
                  ),
                ),
              ),
              SizedBox(height: 50,),
            ],
          )
               // Title of leaderboard

          // Card with column of entries

          // Buttons underneath to toggle friends/global

// Is called Cleanser leaderboard
// Each entry shows rank, username, pictures submitted, points collected
// There will be a toggle for you to see top leaderboard with your friends
// and then global leaderboard
// Colum with entries of top 5 cleansers


    );
  }
}

SizedBox entry(String color1, bool medal, String color,  String rank, String i, String name, String pics, String level, String location)
{

  return SizedBox(
    height: 50,
    child: Card(
      color:HexColor.fromHex(color1) ,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.workspace_premium, size: 30,  color: HexColor.fromHex(color),),
          SizedBox(width: 10,),
          Text( rank , style:  GoogleFonts.montserrat(
              decoration: TextDecoration.none,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 18),),
          SizedBox(width: 10,),
          CircleAvatar(backgroundImage: NetworkImage(i),radius: 13,),
          SizedBox(width: 10,),
          Text( name , style:  GoogleFonts.montserrat(
              decoration: TextDecoration.none,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 13),),
          SizedBox(width: 10,),
          // Icon(Icons.image, size: 20,),
          image(location, 25, 25),
          SizedBox(width: 10,),
          Text( pics , style:  GoogleFonts.montserrat(
              decoration: TextDecoration.none,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 13),),
          SizedBox(width: 10,),
          Text( 'LVL. '+level , style:  GoogleFonts.montserrat(
              decoration: TextDecoration.none,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 13),),


        ]
        ),
      ),
    ),
  );
}


SizedBox FirstLine()
{

  return SizedBox(
    child: Card(
      color: HexColor.fromHex('Ade8f4'),
      child: Center(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(width: 10,),
              Text( "Rank:" , style:  GoogleFonts.montserrat(
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 18),),
              SizedBox(width: 10,),
              Text( "Name:" , style:  GoogleFonts.montserrat(
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 18),),
              SizedBox(width: 10,),
              Text( "No. Pics" , style:  GoogleFonts.montserrat(
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 18),),
              SizedBox(width: 10,),
              Text( 'Level' , style:  GoogleFonts.montserrat(
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 18),),


            ]
        ),
      ),
    ),
  );
}
