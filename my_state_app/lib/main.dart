import 'package:flutter/material.dart';

void main() {
  runApp(CounterApp());
}
//Basic SatefuleWidget Structure:

// class MyApp extends StatefulWidget {
//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// //Screen Building
// class _MyAppState extends State<MyApp>{
//   //Same
// }

//Example1

class CounterApp extends StatefulWidget {
  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  //Dart
  int count = 0;

  //Function
  void IncreaseCount() {
    setState(() {
      count++;  //Data Changed - FLutter to rebuld screen
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Counter App")),

        // body: Center(
        //   child: Text(
        //     "Count/Like/Cart:  $count ",
        //     style: TextStyle(fontSize: 24),
        //   ),
        // ),



        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Icon(Icons.favorite, color:Colors.red,size:50),

            Text("$count Likes " ,
            style: TextStyle(fontSize: 20),
            ),

            SizedBox(height: 20),

            ElevatedButton(onPressed: IncreaseCount, child: Text("Like "))

          ],
        ),

        // floatingActionButton: FloatingActionButton(
        //   onPressed: IncreaseCount,
        //   child: Icon(Icons.add),
        // ),
      ),
    );
  }
}
