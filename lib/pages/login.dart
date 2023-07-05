import 'package:flutter/material.dart';
import 'package:the_ev_life_app/customWidgets/loginFormWidget.dart';

class Login extends StatefulWidget{
  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<Login> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(20.0),
              child: LoginForm(),
            ),
          ],
        )),
    );
  }
}