import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'HexColor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'MethodsANDLinks.dart';



class loading extends StatefulWidget {
  const loading({Key? key}) : super(key: key);

  @override
  _loadingState createState() => _loadingState();
}

class _loadingState extends State<loading> {
  @override
  Widget build(BuildContext context) {

    Future.delayed(Duration(seconds: 20), () {
      Navigator.pushNamed(context, '/why');
    });

    List<String> list = [
      "Ready to help the community?", "Welcome to Cleansea!",
      "Thank you for helping us!", "Earn points and prizes"
    ];

    return Container(
      //  color: HexColor.fromHex('BAE2FF'),
        decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  bgPic1),
              fit: BoxFit.cover,
            )),
        child: (
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 25,),
                  logo(250, 250),

                  SizedBox(height: 25,),
                  SizedBox(
                    height: 15,
                    width: 150,
                    child: LinearProgressIndicator(
                      backgroundColor:HexColor.fromHex('03045e'),
                      valueColor: AlwaysStoppedAnimation<Color>(HexColor.fromHex('0077b6'),),

                    ),
                  ),
                  SizedBox(
                    height: 200,

                    child: Opacity( //Wrap any widget with Opacity()
                        opacity: 1, //from 0-1, 0.5 = 50% opacity
                        child: CarouselSlider(
                          options: CarouselOptions(
                              autoPlay: true,
                              autoPlayInterval: const Duration(seconds: 2)
                          ),
                          items: list
                              .map((item) => Container(
                            child: Center(child: Text(item, style: GoogleFonts.montserrat(
                                decoration: TextDecoration.none,
                                color: Colors.black,
                                fontSize: 15
                            ))),

                          ))
                              .toList(),
                        )),
                  ),

                ],
              ),
            )));
  }

  }


Widget logo(double height, double width) {
  return Image.network(
    'https://i.ibb.co/JvnZY99/Cleansea-Logo.png',
    height: height, width: width,

  );
}