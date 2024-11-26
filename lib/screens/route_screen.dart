import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class RouteScreen extends StatelessWidget {
  const RouteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Route Details')),
      body: GoogleMap(
        initialCameraPosition: const CameraPosition(
          target: LatLng(28.6139, 77.2090), // Example start location
          zoom: 12,
        ),
        polylines: {
          const Polyline(
            polylineId: PolylineId('route'),
            points: [
              LatLng(28.6139, 77.2090),
              LatLng(28.7041, 77.1025),
            ],
            color: Colors.blue,
          ),
        },
      ),
    );
  }
}
