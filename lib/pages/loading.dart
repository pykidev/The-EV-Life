// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors, use_key_in_widget_constructors, avoid_print, unused_local_variable, use_build_context_synchronously, must_call_super, unused_field

// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:the_ev_life_app/customClasses/formData.dart';
import 'package:http/http.dart';
// import 'dart:convert';

class Loading extends StatefulWidget {
  final LoginFormData formData;
  const Loading({super.key, required this.formData});
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  // bool _dataReceived = false;
  
  // _LoadingState({required LoginFormData formData});
  void getData() async {
    print(widget.formData);
    await Future.delayed(Duration(seconds: 7));
    Navigator.pushReplacementNamed(context, '/');
  }

  @override
  void initState(){
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    // final data = ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    // print(data);
    
    return Scaffold(
        body: Center(
        child: LoadingAnimationWidget.threeRotatingDots(
          color: Color.fromRGBO(75, 145, 241, 1),
          size: 75,
        ),
    ),
  );
  }
}