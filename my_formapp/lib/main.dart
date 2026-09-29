import 'package:flutter/material.dart';

void main() {
  runApp(LoginFromApp());
}

class LoginFromApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: LoginScreen());
  }
}

class LoginScreen extends StatelessWidget {
  //GlobalKey
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Form")),

      body: Padding(
        padding: EdgeInsets.all(20),

        child: Form(
          key: _formKey,

          child: Column(
            children: [
              //Email Feild
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Email",

                  border: OutlineInputBorder(),
                ),

                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Email Cannot Be Empty";
                  } else if (!value.contains("@")) {
                    return "Email Invalid";
                  } else {
                    return null;
                  }

                 
                },
              ),

              SizedBox(height: 15),

              //Password Feild
              TextFormField(
                  
                obscureText: true,

                decoration: InputDecoration(
                  labelText: "Password",
                

                  border: OutlineInputBorder(),
                ),

                validator: (value) {
                  if (value == null || value.length < 6) {
                    return "Password must be at least of 6 character";
                  }
                  return null;
                },
              ),

              SizedBox(height: 15),

              //Login Button
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Login Successfull")),
                    );
                  }
                },
                child: Text("Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
