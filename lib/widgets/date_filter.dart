import 'package:flutter/material.dart';

class DateFilter extends StatelessWidget {
  final Function(DateTime) onDateSelected;

  const DateFilter({super.key, required this.onDateSelected});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Select Date:',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        ElevatedButton(
          onPressed: () async {
            DateTime? selectedDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2000),
              lastDate: DateTime.now(),
            );
            if (selectedDate != null) {
              onDateSelected(selectedDate);
            }
          },
          child: const Text('Pick a Date'),
        ),
      ],
    );
  }
}
