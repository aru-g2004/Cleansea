import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'HexColor.dart';
import 'MethodsANDLinks.dart';
import 'login.dart';
import 'main.dart';


class why extends StatefulWidget {
  const why({Key? key}) : super(key: key);

  @override
  _whyState createState() => _whyState();
}

class _whyState extends State<why> {
  @override
  Widget build(BuildContext context) {
    return Container(
       // color: HexColor.fromHex('0077b6'),
        decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  bgPic1),
              fit: BoxFit.cover,
            )),
        child:

        CarouselSlider(
            options: CarouselOptions(
              initialPage: 0,
              height: MediaQuery.of(context).size.height,
              enableInfiniteScroll: true,
              reverse: false,
             // autoPlayInterval: const Duration(seconds: 15),
             // autoPlay: true,
              enlargeCenterPage: true,
             // autoPlayCurve: Curves.decelerate,
              scrollDirection: Axis.horizontal,
            ),
            items: [
              carousel('https://i.ibb.co/cxdpwLs/2.png'),
              carousel('https://i.ibb.co/7Gdb2yV/3.png',),
              carousel('https://i.ibb.co/Jjx0zSX/4.png'),
              carousel('https://i.ibb.co/gZKmdRb/5.png'),

              Center(
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color:HexColor.fromHex('Ade8f4') ,
                  child: TextButton(
                    onPressed: (){
                      Navigator.pushNamed(context, '/login');

                    },
                    child: Text("Become a Cleanser today!", style: Page1style(20)),

                  ),
                ),
              )
            ]
        )



    );
  }
}


Widget image(String image, double h, double w) {
  return Image.network(
      image, height: h, width: w,

  );
}

Widget carousel(String image) {
  return Image.network(
    image

  );
}
