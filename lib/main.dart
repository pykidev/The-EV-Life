// // ignore_for_file: depend_on_referenced_packages

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:the_ev_life_app/pages/home.dart';
import 'package:the_ev_life_app/pages/login.dart';
import 'package:the_ev_life_app/pages/proAnalytics.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/login',
  routes: {
    '/': (context) => Home(),
    '/login': (context) => Login(),
    '/proAnalytics': (context) => ProAnalyticsChargeData(),
  }
));