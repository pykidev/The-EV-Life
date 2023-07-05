// ignore_for_file: empty_constructor_bodies

import 'package:flutter/material.dart';

// class CustomCard {
  // String title;
  // String value;
  // Widget icon;

  // CustomCard({required this.title, required this.value, required this.icon})

Widget initCard(String title, String value, Icon icon) {
  return Container(
    margin: const EdgeInsets.all(20.0),
    child:Card(
    color: Colors.grey[100],
    child: Container(
      padding: const EdgeInsets.all(20.0),
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(title, style: TextStyle(fontSize: 20.0),),
        Divider(
          height: 40.0,
          color: Colors.grey[900],
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: icon
              ),
            const VerticalDivider(
              indent: 20,
              endIndent: 0,
              width: 20.0,
              thickness: 2.0,
              color: Colors.grey,
            ),
            Expanded(
              child: Text(
                value,
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.grey[700], 
                ),
              ))
          ],
        )
      ]
      ),
    )
  ));
}