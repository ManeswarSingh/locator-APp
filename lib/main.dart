import 'package:flutter/material.dart';
import 'screens/attendance_screen.dart';
import 'screens/member_location_screen.dart';
import 'screens/route_screen.dart';

void main() {
  runApp(LocationTrackerApp());
}

class LocationTrackerApp extends StatelessWidget {
  const LocationTrackerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Location Tracker',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => AttendanceScreen(),
        '/member-location': (context) => MemberLocationScreen(),
        '/route': (context) => RouteScreen(),
      },
    );
  }
}
