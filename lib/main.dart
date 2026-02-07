import 'package:flutter/material.dart';
import 'screens/parking_locations.dart';
import 'screens/parking_map.dart';
import 'screens/find_vehicle.dart';
import 'screens/parking_detail.dart';

void main() {
  runApp(const ParkSenseApp());
}

class ParkSenseApp extends StatelessWidget {
  const ParkSenseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ParkSense AI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const ParkingLocationsPage(),
        '/map': (context) => const ParkingMapPage(),
        '/find': (context) => FindVehiclePage(),
        '/detail': (context) => const ParkingDetailScreen(),
      },
    );
  }
}
