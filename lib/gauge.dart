import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Landing(),
    );
  }
}

class Landing extends StatelessWidget {
  const Landing({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
              child: SfRadialGauge(axes: <RadialAxis>[
            RadialAxis(
                startAngle: 90,
                endAngle: 220,
                showTicks: false,
                pointers: const <GaugePointer>[
                  MarkerPointer(
                      value: 60,
                      markerHeight: 30,
                      markerWidth: 30,
                      markerType: MarkerType.circle,
                      color: Colors.lightBlue,
                      borderWidth: 3,
                      borderColor: Colors.black),
                ]
                // pointers:const <GaugePointer>[RangePointer(value: 30,
                //     cornerStyle: CornerStyle.bothCurve)]
                )
          ])),
        ),
      ),
    );
  }
}
