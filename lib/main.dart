// // ignore_for_file: depend_on_referenced_packages

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
// import 'package:location_app_net_ninjas/pages/choose_location.dart';
import 'package:the_ev_life_app/pages/home.dart';
import 'package:the_ev_life_app/pages/loading.dart';
// import 'package:location_app_net_ninjas/pages/loading.dart';
import 'package:the_ev_life_app/pages/login.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/login',
  routes: {
    '/': (context) => Loading(),
    '/home': (context) => Home(),
    '/login': (context) => Login(),
  }
));