// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors, use_key_in_widget_constructors, avoid_print, unused_local_variable, use_build_context_synchronously, must_call_super, unused_field

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
// import 'package:the_ev_life_app/customClasses/formData.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  // bool _dataReceived = false;

  Future getData(BuildContext context) async {
    var url = Uri.https('jsonplaceholder.typicode.com','/todos/1');
    Response response = await get(url);
    

    if(response.statusCode == 200){
      print(jsonDecode(response.body));
      // _dataReceived = true;
      Navigator.pushNamed(context, '/');
    }
  }

  @override
  void initState(){
    getData(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    print(data);
    
    return Scaffold(
        body: Center(
        child: LoadingAnimationWidget.threeRotatingDots(
          color: Color.fromRGBO(75, 145, 241, 1),
          size: 200,
        ),
    ),
  );
  }
}