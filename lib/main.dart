import 'package:flutter/material.dart';
import 'package:myapp/screens/welcomeScreen.dart';

void main() {
  runApp(
       MaterialApp(
         debugShowCheckedModeBanner: false,
         showPerformanceOverlay: false,
    home: Home(),
  ));

}
class Home extends StatelessWidget{
  Widget build(BuildContext context){
    return WelcomeScreen();
  }
}


