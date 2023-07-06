// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:the_ev_life_app/customClasses/chargeData.dart';

class CustomChargeDataGraph extends StatefulWidget{
  const CustomChargeDataGraph({super.key, required this.data});

  final List<ChargeDataTemplate> data;

  @override
  _CustomChargeDataGraphState createState() => _CustomChargeDataGraphState();
}

class _CustomChargeDataGraphState extends State<CustomChargeDataGraph>{
  @override
  Widget build(BuildContext context){
    return Container(
      padding: const EdgeInsets.all(8.0),
      // margin: const EdgeInsets.all(8.0),
      child: Card(
        child: SfCartesianChart(
          primaryXAxis: CategoryAxis(),
          title: ChartTitle(text: 'Charge Per Km versus Time'),
          legend: const Legend(isVisible: true),
          // tooltipBehavior: TooltipBehavior(enable: ),
          series: <ChartSeries<ChargeDataTemplate, int>>[
            LineSeries<ChargeDataTemplate, int>(
              dataSource: widget.data, 
              xValueMapper: (ChargeDataTemplate data, _) => data.timeSinceEpoch,  
              yValueMapper: (ChargeDataTemplate data, _) => data.chargePerKm,
              name: 'User data',
              dataLabelSettings: const DataLabelSettings(isVisible: false),
            )
          ]
        ),
      )
    );
  }
}

class CustomBatteryTempGraph extends StatefulWidget{
  const CustomBatteryTempGraph({super.key, required this.data});

  final List<ChargeDataTemplate> data;

  @override
  _CustomBatteryTempGraphState createState() => _CustomBatteryTempGraphState();
}

class _CustomBatteryTempGraphState extends State<CustomBatteryTempGraph>{
  @override
  Widget build(BuildContext context){
    return Container(
      padding: const EdgeInsets.all(8.0),
      // margin: const EdgeInsets.all(8.0),
      child: Card(
        child: SfCartesianChart(
          primaryXAxis: CategoryAxis(),
          title: ChartTitle(text: 'Temperature versus Charging Percentage'),
          legend: const Legend(isVisible: true),
          // tooltipBehavior: TooltipBehavior(enable: ),
          series: <ChartSeries<ChargeDataTemplate, int>>[
            LineSeries<ChargeDataTemplate, int>(
              dataSource: widget.data, 
              xValueMapper: (ChargeDataTemplate data, _) => data.timeSinceEpoch,  
              yValueMapper: (ChargeDataTemplate data, _) => data.chargePerKm,
              name: 'User data',
              dataLabelSettings: const DataLabelSettings(isVisible: false),
            )
          ]
        ),
      )
    );
  }
}