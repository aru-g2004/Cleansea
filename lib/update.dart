import 'package:flutter/material.dart';
import 'package:teamnineapp/why.dart';

import 'HexColor.dart';
import 'MethodsANDLinks.dart';
import 'home.dart';
import 'journey.dart';
import 'login.dart';

class update extends StatefulWidget {
  const update({Key? key}) : super(key: key);

  @override
  _updateState createState() => _updateState();
}

String trash = "https://localwiki.org/media/cache/d6/0b/d60b23dd7139d80591b4f78a430e6e49.jpg";

class _updateState extends State<update> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                bgPic1),
            fit: BoxFit.cover,
          )),

      child: Column(
        children: [
          SizedBox(height: 50,),
          Text("Cleansea Entry 903:" , style: Page1style(25)),
          SizedBox(height: 30,),

          SizedBox(
            height: 320,
            width: 250,
            child: Card(
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Text("Image 903:" , style: Page1style(15)),
                  image(trash, 200, 200),
                  Text("Location: Atlantic City Beach, NJ" , style: Page1style(15)),
                  SizedBox(height: 20,),
                  Text("Type: Can" , style: Page1style(15)),
                ],
              ),

            ),
          ),
          SizedBox(height: 20,),
          SizedBox(
            width: 250,
            height: 40,
            child: Card(
              color: HexColor.fromHex('#48cae4'),
              child: Center(child: Text('Is the information correct?', style: Page1style(15))),
            ),
          ),
        Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
                Buttons('238823', context, '/reward', Icons.check ),
                Buttons('D2222D', context, '/home', Icons.close ),
              ],
            ),


        ],

      ),
    );
  }
}
