import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TimelineView extends StatelessWidget {
  final List<Map<String, dynamic>> locations;

  const TimelineView({super.key, required this.locations});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: locations.length,
      itemBuilder: (context, index) {
        final location = locations[index];
        return TimelineTile(
          alignment: TimelineAlign.start,
          indicatorStyle: const IndicatorStyle(
            color: Colors.blue,
            width: 20,
          ),
          beforeLineStyle: const LineStyle(color: Colors.blue, thickness: 3),
          endChild: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '${location['timestamp']} - ${location['latitude']}, ${location['longitude']}',
              style: const TextStyle(fontSize: 16),
            ),
          ),
        );
      },
    );
  }
}
