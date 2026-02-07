import 'package:flutter/material.dart';

class ParkingMapPage extends StatelessWidget {
  const ParkingMapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          /// MAP BACKGROUND
          Positioned.fill(
            child: Image.asset(
              'assets/map.png',
              fit: BoxFit.cover,
            ),
          ),

          /// TOP SEARCH CARD
          Positioned(
            top: 40,
            left: 16,
            right: 16,
            child: Column(
              children: [
                _searchBar(),
                const SizedBox(height: 10),
                _locationCard(),
              ],
            ),
          ),

          /// ROUTE INFO CARD
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: _routeInfoCard(),
          ),

          /// CLOSE BUTTON
          Positioned(
            bottom: 90,
            right: 20,
            child: CircleAvatar(
              backgroundColor: Colors.lightGreen,
              child: IconButton(
                icon: const Icon(Icons.close, color: Colors.white),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _searchBar() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      height: 48,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 10),
        ],
      ),
      child: const Row(
        children: [
          Icon(Icons.search, color: Colors.grey),
          SizedBox(width: 10),
          Text("Search...", style: TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }

  Widget _locationCard() {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 10),
        ],
      ),
      child: const Column(
        children: [
          _LocationRow(
            icon: Icons.my_location,
            title: "Your Location",
            subtitle: "GreenVolt Station - Downtown",
          ),
          Divider(),
          _LocationRow(
            icon: Icons.location_on,
            title: "Your Destination",
            subtitle: "Park & Plug - Midtown Hub",
          ),
        ],
      ),
    );
  }

  Widget _routeInfoCard() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("15 min",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              SizedBox(height: 4),
              Text("5.5 km • 10:20 AM",
                  style: TextStyle(color: Colors.grey)),
            ],
          ),
          Icon(Icons.drag_handle, color: Colors.grey),
        ],
      ),
    );
  }
}

class _LocationRow extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const _LocationRow({
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
            Text(subtitle, style: const TextStyle(color: Colors.grey)),
          ],
        ),
      ],
    );
  }
}
