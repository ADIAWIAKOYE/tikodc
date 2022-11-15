import 'package:flutter/material.dart';
import 'package:tikodc/constants.dart';
import 'package:tikodc/screens/homepage.dart';
import 'package:tikodc/screens/sign.dart';
 import 'package:video_player/video_player.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TikTok Clone',
      /*
      theme: ThemeData.dark().copyWith(
      scaffoldBackgroundColor: backgroundColor,
    ),
    */
      home: Homepage(),
      //theme: ThemeData(brightness: Brightness.dark)
    );
  }
}


