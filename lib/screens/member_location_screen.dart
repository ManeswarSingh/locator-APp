import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MemberLocationScreen extends StatelessWidget {
  const MemberLocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String memberId = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(title: const Text('Member Location')),
      body: Column(
        children: [
          Expanded(
            child: GoogleMap(
              initialCameraPosition: const CameraPosition(
                target: LatLng(28.6139, 77.2090), // Example coordinates
                zoom: 12,
              ),
              markers: {
                const Marker(
                  markerId: MarkerId('currentLocation'),
                  position: LatLng(28.6139, 77.2090),
                ),
              },
            ),
          ),
          SizedBox(
            height: 200,
            child: ListView(
              children: const [
                ListTile(title: Text('Location 1 - 28.6139, 77.2090')),
                ListTile(title: Text('Location 2 - 28.7041, 77.1025')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
