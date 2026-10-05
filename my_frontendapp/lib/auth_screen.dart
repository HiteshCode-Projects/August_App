import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart'; //Allow me To use or Connect AUthentication Service of Backend

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  //Firebase Autentication Service Activate
  final auth = FirebaseAuth.instance;

  //Sign Up-Create Account

  void signUp() async {
    try {
      //Sign up
      await auth.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );

      print("User Created");
    } catch (e) {
      print(e);
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
      print("User Logged In");
    } catch (e) {
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
              controller: passwordController,
              decoration: InputDecoration(labelText: "Password"),
            ),

            SizedBox(height: 20),

            ElevatedButton(onPressed: signUp, child: Text("Login")),
            SizedBox(height: 10),
            ElevatedButton(onPressed: login, child: Text("Sign Up")),
          ],
        ),
      ),
    );
  }
}
