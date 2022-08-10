
import 'package:flutter/material.dart';
import 'package:teamnineapp/journey.dart';
import 'package:teamnineapp/leaderboard.dart';
import 'package:teamnineapp/reward.dart';
import 'package:teamnineapp/update.dart';
import 'package:teamnineapp/upload.dart';
import 'package:teamnineapp/why.dart';

import 'home.dart';
import 'loading.dart';
import 'login.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/loading',
    routes: {
      '/loading': (context) => loading(),
      '/why': (context) => why(),
      '/login': (context) => login(),
      '/home': (context) => home(),
      '/upload': (context) => upload(),
      '/leaderboard': (context) => leaderboard(),
      '/update' : (context) => update(),
      '/reward' : (context) => reward(),
      '/journey': (context) => journey(),


    },
  ));
}




/*

Home page and then upload button where u can upload a picture and then it will look like its being classified
Volunteer Points will be counted

 */