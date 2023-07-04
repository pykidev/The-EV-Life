// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}


class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(child: Text('Loading Screen')),
    );
  }
}