import 'package:flutter/material.dart';

void main() {
  runApp(HomeScreen());
  //InBuild Method Which Help us To Run The Screen / Class Code
}

//Screen Build-Design
//1. WireFraming- Basic Sketch of Screen

//2.Screen BulePrint -  Class
//Everything on Screen is a Widgets
//Scaffold - Screen Sctructure
//Statless Widget - No Change or update
//Statlefull Widget - Update on Screen

class HomeScreen extends StatelessWidget {
  //Child     extends Parent Class -Home screen has access to use all the prop of Parent Class-StatlessWidget
  @override
  Widget build(BuildContext context) {
    //Widget build Is an InBuilt Which help us to build the screen design

    return MaterialApp(
             
           home: Scaffold(

              appBar: AppBar( title: Text("Instgram"),  ),


              body: Center(

                child: Text("welcome - Good evening ⭐"),

              ),



           ), //Screen Structure

    ); //Complete screen as output-
  }
}
