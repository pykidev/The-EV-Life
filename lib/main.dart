import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:the_ev_life_app/widget_tree.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      // theme: ThemeData(
      //   primarySwatch: Color.blue,
      // ),
      home: WidgetTree(),
    );
  }
}