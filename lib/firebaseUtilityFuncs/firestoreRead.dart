import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../customWidgets/customCardWidget.dart';

class GetCarData extends StatelessWidget {
  final String documentId;

  GetCarData(this.documentId);

  @override
  Widget build(BuildContext context) {
    CollectionReference carData =
        FirebaseFirestore.instance.collection('car_data_basic_analytics');

    return FutureBuilder<DocumentSnapshot>(
      future: carData.doc(documentId).get(),
      builder:
          (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
        if (snapshot.hasError) {
          return const Card(child: Text("Something went wrong"));
        }
        if (snapshot.hasData && !snapshot.data!.exists) {
          return const Card(child: Text("Document does not exist"));
        }
        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data =
              snapshot.data!.data() as Map<String, dynamic>;
          return Container(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:<Widget>[
                  initCard(
                    'Battery',
                    data['battery_level']+'%',
                    const Icon(Icons.battery_5_bar_outlined, size: 100.0, 
                    color: Colors.green,)
                  ),
                  initCard(
                    'Battery Temperature',
                    data['battery_temp']+'\u2103',
                    const Icon(
                      Icons.thermostat_outlined, size: 100.0, 
                      color: Colors.blue,)),
                  ]
                )
              );
        }

        return LoadingAnimationWidget.threeRotatingDots(
          color: const Color.fromRGBO(75, 145, 241, 1),
          size: 75,
        );
      },
    );
  }
}