// ignore_for_file: library_private_types_in_public_api, use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_interpolation_to_compose_strings

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../firebaseUtilityFuncs/auth.dart';
import '../firebaseUtilityFuncs/firestoreRead.dart';

// String documentId = FirebaseFirestore.instance.
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  CollectionReference carData =
        FirebaseFirestore.instance.collection('car_data_basic_analytics');
  // String documentId = carData.getDocs
  Future<String?> getUserDoc() async {
    QuerySnapshot querySnapshot = await carData.get();
    final currentUserEmail = Auth().currentUser?.email; 
    final userDoc = querySnapshot.docs.map((doc){
      if(doc['owner'] == currentUserEmail){
        return doc;
      }
    }).toList()[0];
    return userDoc?.id;
  }
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
                          IconButton(onPressed: Auth().signOut, 
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
              child: GetCarData(getUserDoc() as String)
            ),
           ],
         )
      )
    );
  }
}
