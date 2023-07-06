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
         body: SafeArea(child: Column(
           children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                color: Color.fromRGBO(75, 145, 241, 1),
                // decoration: BoxDecoration(),
                
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                        padding: EdgeInsets.all(1.0),
                        child: Image(
                          image: AssetImage('images/the-ev-life-website-favicon-white.png')              
                      ),
                    ),
                    SizedBox(width: 20.0,),
                    Text('Basic Analytics', style: TextStyle(fontSize: 20.0, color: Colors.white),),
                    SizedBox(width: 20.0,),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(onPressed: () {
                            Navigator.pushNamed(context, '/proAnalytics');
                          }, 
                          icon: Icon(Icons.analytics_outlined, color: Colors.white, size: 40.0,)),
                          IconButton(onPressed: () {
                            Navigator.pushNamed(context, '/login');
                          }, 
                          icon: Icon(Icons.logout_outlined, color: Colors.white, size: 40.0,)),
                                                  ],
                      )
                    ),
                  ],
                ),
              )
            ),
            Expanded(
              flex: 7,
              child: Container(
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
                    ),
            ),
           ],
         )
      )
    );
  }
}
