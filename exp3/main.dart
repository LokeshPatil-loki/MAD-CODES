// ignore_for_file: prefer_const_constructors
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  MyFormState createState() {
    return MyFormState();
  }
}

class MyFormState extends State<MyForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Instagram",
            style: GoogleFonts.lobster(fontSize: 40),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: TextFormField(
              validator: (value) {
                if (value?.isEmpty == true) {
                  return "Please Enter Valid email";
                }
              },
              decoration: InputDecoration(
                  label: Text("Email"),
                  hintText: "Enter you Email",
                  prefixIcon: Icon(
                    Icons.email,
                  ),
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.all(20)),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: TextFormField(
              validator: (value) {
                if (value?.isEmpty == true) {
                  return "Please enter a password";
                }
              },
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Password"),
                prefixIcon: Icon(Icons.password),
                hintText: "Enter your Password",
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            height: 50,
            child: OutlinedButton(
              onPressed: () => {
                if (_formKey.currentState!.validate() == true)
                  {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Login Successfull"),
                      ),
                    )
                  }
                else
                  {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Validation Error"),
                      ),
                    )
                  }
              },
              style: OutlinedButton.styleFrom(
                minimumSize: Size.fromHeight(50),
                backgroundColor: Colors.blue[600],
                foregroundColor: Colors.white,
              ),
              child: Text(
                "Login",
                style: TextStyle(fontSize: 18),
              ),
            ),
          )
        ],
      ),
    );
  }
}
