import 'package:flutter/material.dart';

class AttendanceScreen extends StatelessWidget {
  final List<Map<String, String>> members = [
    {"id": "1", "name": "John Doe"},
    {"id": "2", "name": "Jane Smith"},
  ];

  const AttendanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Attendance')),
      body: ListView.builder(
        itemCount: members.length,
        itemBuilder: (context, index) {
          final member = members[index];
          return ListTile(
            title: Text(member['name']!),
            trailing: IconButton(
              icon: const Icon(Icons.map),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/member-location',
                  arguments: member['id'],
                );
              },
            ),
          );
        },
      ),
    );
  }
}
