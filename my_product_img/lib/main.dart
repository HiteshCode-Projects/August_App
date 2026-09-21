import 'package:flutter/material.dart';

// void main() {
//   runApp(ProductApp());
// }

// class ProductApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Amazon📍")),

//         body: Center(
//           child: Container(
//             width: 300,

//             padding: EdgeInsets.all(16),

//             decoration: BoxDecoration(
//               border: Border.all(color: Colors.brown),
//               borderRadius: BorderRadius.circular(12),
//             ),

//             child: Column(
//               mainAxisSize: MainAxisSize.min,

//               children: [
//                 Image.network(
//                   "https://images.pexels.com/photos/17743351/pexels-photo-17743351.jpeg",
//                   width: 400,
//                   height: 130,
//                 ),
//                 SizedBox(height: 10),

//                 Text("Headphone"),

//                 SizedBox(height: 8),

//                 Text("Rs2,499"),

//                 SizedBox(height: 10),

//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,

//                   children: [
//                     Icon(Icons.shopping_bag_rounded),
//                     SizedBox(width: 7),
//                     ElevatedButton(
//                       onPressed: () {
//                         print("Product Added To Cart");
//                       },
//                       child: Text("Add To Cart"),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

//Example - 2 Buttons
void main() {
  runApp(ButtonApp());
}

class ButtonApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Buttons")),

        // body: ElevatedButton(onPressed: (){},
        // style: ElevatedButton.styleFrom(
        //   backgroundColor: Colors.red,
        // ),

        // child: Text("Pay Now"))

        // body: TextButton(onPressed: (){}, child: Text("Click Me")),

        // body: IconButton(onPressed: (){ }, icon: Icon(Icons.favorite_border_outlined)),

        //Gesture
        body: GestureDetector(
          onTap: () {
            print("Container Tapped");
          },

          child: Container(
            color: Colors.red,
            padding: EdgeInsets.all(15),
            child: Text("TaP me"),
          ),
        ),
      ),
    );
  }
}
