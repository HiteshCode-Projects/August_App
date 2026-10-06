import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart'; //Allow me To use or Connect AUthentication Service of Backend
import 'package:cloud_firestore/cloud_firestore.dart'; //Allow me To use or Connect Firestore Service of Backend

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  //Firebase Autentication Service Activate
  final auth = FirebaseAuth.instance;

  //Firestore Service Activate
  final firestore = FirebaseFirestore.instance;

  //Sign Up-Create Account

  void signUp() async {
    try {
      //Sign up
      UserCredential user = await auth.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );

      //Save user data in Firestore
      await firestore.collection('users').doc(user.user!.uid).set({
        'email': emailController.text,
        'createdAt': Timestamp.now(),
      });

      print("User Created");

      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("User  Created ")),
      );
    } catch (e) {
      print(e);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.toString())),
      );
    }
  }

  //Login-Verfiy Details
  void login() async {
    try {
      //Login
      await auth.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );

      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Login Successfully ")));

      print("User Logged In");
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(e.toString())));
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Firebase Auth-Login")),

      body: Padding(
        padding: EdgeInsets.all(20),

        child: Column(
          children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: "Email"),
            ),
            SizedBox(height: 12),
            TextField(
              obscureText: true,
              controller: passwordController,
              decoration: InputDecoration(labelText: "Password"),
            ),

            SizedBox(height: 20),

            ElevatedButton(onPressed: signUp, child: Text("Sign Up")),
            SizedBox(height: 10),
            ElevatedButton(onPressed: login, child: Text("Login")),
          ],
        ),
      ),
    );
  }
}
