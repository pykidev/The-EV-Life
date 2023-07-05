// ignore_for_file: library_private_types_in_public_api, use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:the_ev_life_app/customWidgets/customCardWidget.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         body: SafeArea(child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget>[
            initCard(
              'Battery',
              '60%',
              const Icon(Icons.battery_5_bar_outlined, size: 100.0, color: Colors.green,)
            ),
            initCard(
              'Battery Temperature',
              '34''\u2103',
              const Icon(Icons.thermostat_outlined, size: 100.0, color: Colors.blue,)),
            ]
          )
        )
      )
    );
  }
}
