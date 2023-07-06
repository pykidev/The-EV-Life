// // ignore_for_file: depend_on_referenced_packages

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:the_ev_life_app/pages/home.dart';
import 'package:the_ev_life_app/pages/login.dart';
import 'package:the_ev_life_app/pages/proAnalytics.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'firebase_options.dart';

// import 'package:/firebase_auth/firebase_auth.dart';


void main() => runApp(MaterialApp(
  initialRoute: '/login',
  routes: {
    '/': (context) => Home(),
    '/login': (context) => Login(),
    '/proAnalytics': (context) => ProAnalyticsChargeData(),
  }
));