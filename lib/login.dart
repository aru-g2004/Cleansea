import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'HexColor.dart';
import 'MethodsANDLinks.dart';
import 'loading.dart';
import 'main.dart';



class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  @override


  Widget build(BuildContext context) {
    return Container(
    //  color: HexColor.fromHex('90e0ef'),
      decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                bgPic1),
            fit: BoxFit.cover,
          )),
      child:
      Column(
        children: [
          SizedBox(height: 30,),
          logo(200, 200),
          SizedBox(height: 10,),

          SizedBox(
            height: 300,
            width: 230,
            child: Card(
              color: HexColor.fromHex('48cae4'),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(

                children: [
                  SizedBox(height: 20,),
                  Text('Create an account!', style: Page1style(20),),

                  SizedBox(height: 10,),

                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                      ),
                    ),
                  ),
                  SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                      ),
                    ),
                  ),
                  Center(
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      color:HexColor.fromHex('90e0ef') ,
                      child: TextButton(
                        onPressed: (){
                          Navigator.pushNamed(context, '/home');

                        },
                        child: Text("login", style: Page1style(20)),

                      ),
                    ),
                  )
                ],
              ),


            ),
          )

        ],

      ),
    );
  }
}


TextStyle Page1style(double size)
{
  return GoogleFonts.montserrat(
      decoration: TextDecoration.none,
      fontWeight: FontWeight.bold,
      color: HexColor.fromHex('03045e'),
      fontSize: size);

}


