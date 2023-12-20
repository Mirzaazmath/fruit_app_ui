import 'package:flutter/material.dart';
import 'package:fruit_app_ui/screens/home_screen.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor:const  Color(0xffFFF5F5),
        primaryColor:const  Color(0xffFF6961),
       primaryColorDark:const  Color(0xff304250),
        primaryColorLight: Colors.white
      ),
      home:const  HomeScreen(),

    );
  }
}
