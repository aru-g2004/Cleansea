import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teamnineapp/MethodsANDLinks.dart';
import 'HexColor.dart';
import 'login.dart';

class upload extends StatefulWidget {
  const upload({Key? key}) : super(key: key);

  @override
  _uploadState createState() => _uploadState();
}

class _uploadState extends State<upload> {
  @override

  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 6), () {
      Navigator.pushNamed(context, '/update');
    });
    return Container(
      //color: HexColor.fromHex('#48cae4'),
      decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                bgPic1),
            fit: BoxFit.cover,
          )),
      child:

      Column(
        children: [
          SizedBox(height: 100,),
       Text("    Upload picture of trash", style: Page1style(25)),
          Text("seen at the Beach/Coast", style: Page1style(25)),
          SizedBox(height: 20,),
          Center(child: Text("Example:", style: Page1style(15))),
          SizedBox(
            height: 250,
            width: 200,
            child: Image(image: NetworkImage(
              example
            ),),
          ),

      FlatButton(
                  color: Colors.transparent,
                  onPressed: () async {
                    final results = await FilePicker.platform.pickFiles(
                      allowMultiple: false,
                      type: FileType.custom,
                      allowedExtensions: ['png', 'jpg'],
                    );
                    if (results == null) {

                    }
                  }, child:Icon(Icons.cloud_upload, size: 100, color: HexColor.fromHex('#023e8a'),),)


        ],),

    );
  }
}
