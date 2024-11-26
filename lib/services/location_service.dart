import 'package:geolocator/geolocator.dart';

class LocationService {
  Future<Position> getCurrentLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Check if location services are enabled
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      throw Exception('Location services are disabled.');
    }

    // Check for location permissions
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        throw Exception('Location permissions are denied.');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      throw Exception(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    // Get current position
    return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
  }

  Future<List<Map<String, dynamic>>> getVisitedLocations() async {
    // Simulated data - replace with API or database integration
    return [
      {
        'latitude': 28.6139,
        'longitude': 77.2090,
        'timestamp': '2024-11-25 10:00 AM',
      },
      {
        'latitude': 28.7041,
        'longitude': 77.1025,
        'timestamp': '2024-11-25 12:00 PM',
      },
    ];
  }
}
