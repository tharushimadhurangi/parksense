

import 'package:flutter/material.dart';

class ParkingLocationsPage extends StatelessWidget {
  const ParkingLocationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Parking Locations")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/detail');
          },
          child: const Text("Go to Parking Detail"),
        ),
      ),
    );
  }
}
