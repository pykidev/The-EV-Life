// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:the_ev_life_app/customWidgets/customGraph.dart';
import 'package:the_ev_life_app/customClasses/chargeData.dart';

List<ChargeDataTemplate> data = List.generate(40, (index) => ChargeDataTemplate(index*1000, index%10 + 5) );
// print();

class ProAnalyticsChargeData extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pro Analytics'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          CustomChargeDataGraph(data: data),
          CustomBatteryTempGraph(data: data),
        ],
      )
    );
  }
}

