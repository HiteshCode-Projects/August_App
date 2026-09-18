import 'package:flutter/material.dart';

void main() {
  runApp(ProfileApp());
}

class ProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        appBar: AppBar(title: Text("Profile 📍")),

        body: Center(
          child: Container(
            width: 300,
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(20),

            decoration: BoxDecoration(
              color: Colors.lightBlue.shade200,
              borderRadius: BorderRadius.circular(12),
            ),

            child: Column(
              //Widgets will Display one below Each Other
              mainAxisSize: MainAxisSize.min, //Size of Column

              // children: [
              //   //more than 1 widget
              //   Text(
              //     "Aye Mint",

              //     style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              //   ),

              //   SizedBox(height: 15),

              //   Text("Flutter Developer"),

              //   SizedBox(height: 15),

              //   Text("India"),
              // ],


              children: [
                //more than 1 widget
                Text(
                  "Aye Mint",

                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),

                SizedBox(height: 15),

               Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.lightBlue.shade100,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text("Introduction about myself"),
                ),

                SizedBox(height: 15),

                 Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.lightBlue.shade100,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text("I am a Flutter Developer from India"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
