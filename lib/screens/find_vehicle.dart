import 'package:flutter/material.dart';

class FindVehiclePage extends StatelessWidget {
  const FindVehiclePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Find My Vehicle")),
      body: const Center(
        child: Text("Compass & Step Counter here"),
      ),
    );
  }
}
