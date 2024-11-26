import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:math';

class RouteService {
  double calculateDistance(LatLng start, LatLng end) {
    const earthRadius = 6371; // Radius of Earth in kilometers
    final dLat = _toRadians(end.latitude - start.latitude);
    final dLng = _toRadians(end.longitude - start.longitude);

    final a = sin(dLat / 2) * sin(dLat / 2) +
        cos(_toRadians(start.latitude)) *
            cos(_toRadians(end.latitude)) *
            sin(dLng / 2) *
            sin(dLng / 2);
    final c = 2 * atan2(sqrt(a), sqrt(1 - a));

    return earthRadius * c; // Distance in kilometers
  }

  double _toRadians(double degree) {
    return degree * pi / 180;
  }

  String calculateDuration(double distance, double averageSpeed) {
    final hours = distance / averageSpeed;
    final minutes = (hours - hours.floor()) * 60;
    return '${hours.floor()} hrs ${minutes.round()} mins';
  }
}
