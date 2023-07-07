import 'package:flutter/material.dart';
import 'package:the_ev_life_app/customWidgets/loginFormWidget.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Image(
                image: AssetImage('images/the-ev-life-high-resolution-logo-color-on-transparent-background.png')              
              ),
            ),
            const SizedBox(
              height: 45.0,
            ),
            Container(
              padding: const EdgeInsets.all(20.0),
              child: const LoginForm(),
            ),
          ],
        )),
    );
  }
}