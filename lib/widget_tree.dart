import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:the_ev_life_app/firebaseUtilityFuncs/auth.dart';
import 'package:the_ev_life_app/pages/home.dart';
import 'package:the_ev_life_app/pages/login.dart';
// import 'package:the_ev_life_app/pages/login_register.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({Key? key}): super(key: key);

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context){
    return StreamBuilder(
      stream: Auth().authStateChanges,
      builder: (context, snapshot) {
        if(snapshot.hasData) {
          return Home();
        } else {
          return Login();
        }
      },
    );
  }
}