import 'package:flutter/material.dart';
import 'parking_map.dart';

class ParkingLocationsPage extends StatelessWidget {
  const ParkingLocationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Parking Locations")),
      body: ListView(
        children: [
          ListTile(
            title: const Text("NSBM Main Parking"),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const ParkingMapPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
