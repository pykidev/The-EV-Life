// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:location_app_net_ninjas/pages/choose_location.dart';
import 'package:location_app_net_ninjas/pages/home.dart';
import 'package:location_app_net_ninjas/pages/loading.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => Loading(),
    '/home': (context) => Home(),
    '/location': (context) => ChooseLocation(),
  }
));