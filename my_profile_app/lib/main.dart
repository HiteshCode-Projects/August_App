import 'package:flutter/material.dart';

void main() {
  runApp(ProfileHeaderApp());
}

class ProfileHeaderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Profile")),

        body: Padding(
          padding: EdgeInsets.all(16),

          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    child: Icon(Icons.person_4_outlined),
                  ),

                  SizedBox(width: 15),

                  Column(
                    children: [
                      Text(
                        " Santosh ",
                        style: TextStyle(
                          color: Colors.amberAccent,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 10),

                      Text("Flutter Developer"),
                    ],
                  ),

                  Spacer(),

                  ElevatedButton(
                    onPressed: () {
                      print("Follow Button Pressed");
                    },
                    child: Text("Follow"),
                  ),
                ],
              ),

              SizedBox(height: 20),

              Text("Welcome To My Profile"),
            ],
          ),
        ),
      ),
    );
  }
}
