import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teamnineapp/home.dart';
import 'package:teamnineapp/update.dart';
import 'HexColor.dart';
import 'MethodsANDLinks.dart';
import 'login.dart';
import 'home.dart';





class journey extends StatefulWidget {
  const journey({Key? key}) : super(key: key);

  @override
  _journeyState createState() => _journeyState();
}

class _journeyState extends State<journey> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://i.ibb.co/fpP1DVp/Cleansea-App-Screens.png'),
            fit: BoxFit.cover,
          )),

       child: Column(
         children: [
SizedBox(height: 40,),
           Center(child: Text("My Journey", style: Page1style(25))),
           SizedBox(
             height: 445,
           ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ButtonsUpgrade('023e8a', context,  Icons.place),
              ButtonsUpgrade('00b4d8', context, Icons.place),
              ButtonsUpgrade('90e0ef', context,  Icons.place),
            ],
          )
         ],
       ),
    );
  }
}



Card Buttons(String color, BuildContext context, String nav, IconData icon)
{
  return
    Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)),
      color:HexColor.fromHex(color) ,
      child: IconButton(
        onPressed: (){
          Navigator.pushNamed(context, nav );
        },
        icon: Icon(icon),

      ),
    );
}


Card ButtonsUpgrade(String color, BuildContext context, IconData icon)
{
  return
    Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)),
      color: Colors.white,
      child: IconButton(
        onPressed: (){
showDialog(
context: context,
builder: (BuildContext context) => _buildPopupDialog(context),
);

},
        icon: Icon(icon,size: 20,  color: HexColor.fromHex(color) ,),

      ),
    );
}



Widget _buildPopupDialog(BuildContext context) {
  return new AlertDialog(
    title: Text('Atlantic City Beach, NJ' , style: Page1style(20)),
    content: new ListView(
      children: <Widget>[
        SizedBox(height: 40,),
        Picture(trash, "8/9/2022"),
        Picture('https://www.staradvertiser.com/wp-content/uploads/2022/03/web1_12378936-203e8ec1907045c185e6b3066a1da6ff.jpg', "3/7/2022"),
        Picture('https://c8.alamy.com/comp/2AE76YE/rusty-bottle-cap-on-the-beach-beer-bintang-bali-2AE76YE.jpg' , '2/6/2022'),

      ],
    ),
  );
}


Widget Picture(String image, String date)
{
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Card(

                color: Colors.white ,
                child:
                Column(
                  children: [
                    Text(date, style: Page1style(15)),
                    Image(image: NetworkImage(image )),
                  ],
                )


      ),
  );
}

