import 'package:flutter/material.dart';
import 'scan_qr.dart';
import 'find_vehicle.dart';

class ParkingMapPage extends StatelessWidget {
  const ParkingMapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Parking Map")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            child: const Text("Scan QR & Park"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const ScanQRPage()),
              );
            },
          ),
          ElevatedButton(
            child: const Text("Find My Vehicle"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const FindVehiclePage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
