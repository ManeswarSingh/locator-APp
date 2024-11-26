import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationMap extends StatelessWidget {
  final LatLng currentLocation;
  final List<LatLng> visitedLocations;

  const LocationMap({super.key, required this.currentLocation, required this.visitedLocations});

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      initialCameraPosition: CameraPosition(
        target: currentLocation,
        zoom: 12,
      ),
      markers: {
        Marker(
          markerId: const MarkerId('currentLocation'),
          position: currentLocation,
          infoWindow: const InfoWindow(title: 'Current Location'),
        ),
        ...visitedLocations.map(
          (location) => Marker(
            markerId: MarkerId(location.toString()),
            position: location,
          ),
        ),
      },
      polylines: {
        Polyline(
          polylineId: const PolylineId('route'),
          points: [currentLocation, ...visitedLocations],
          color: Colors.blue,
          width: 4,
        ),
      },
    );
  }
}
