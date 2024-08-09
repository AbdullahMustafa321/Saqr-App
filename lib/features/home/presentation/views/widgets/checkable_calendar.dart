import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CheckableCalendar extends StatefulWidget {
  @override
  _CheckableCalendarState createState() => _CheckableCalendarState();
}

class _CheckableCalendarState extends State<CheckableCalendar> {
  Set<DateTime> _selectedDates = {};

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          TableCalendar(
            firstDay: DateTime.utc(2024, 1, 1),
            lastDay: DateTime.utc(2030, 12, 31),
            focusedDay: DateTime.now(),
            selectedDayPredicate: (day) {
              // Highlight the selected dates
              return _selectedDates.contains(day);
            },
            onDaySelected: (selectedDay, focusedDay) {
              setState(() {
                if (_selectedDates.contains(selectedDay)) {
                  // If the date is already selected, remove it
                  _selectedDates.remove(selectedDay);
                } else {
                  // Otherwise, add it to the selected dates
                  _selectedDates.add(selectedDay);
                }
              });
            },
            calendarStyle: CalendarStyle(
              isTodayHighlighted: true,
              selectedDecoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
              todayDecoration: BoxDecoration(
                color: Colors.orange,
                shape: BoxShape.circle,
              ),
              markerDecoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
            ':ألايام التي تريد حجزها',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Wrap(
            spacing: 8.0,
            children: _selectedDates
                .map((date) => Chip(label: Text('${date.toLocal()}'.split(' ')[0])))
                .toList(),
          ),
        ],
    );
  }
}
