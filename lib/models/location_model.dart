class LocationModel {
  final String id;
  final String name;
  final double latitude;
  final double longitude;
  final DateTime timestamp;

  LocationModel({
    required this.id,
    required this.name,
    required this.latitude,
    required this.longitude,
    required this.timestamp,
  });
}
