import 'package:flutter/material.dart';
import 'screens/parking_locations.dart';

void main() {
  runApp(const ParkSenseApp());
}

class ParkSenseApp extends StatelessWidget {
  const ParkSenseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ParkSense AI',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const ParkingLocationsPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
