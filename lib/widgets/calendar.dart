import 'package:flutter/material.dart';
import 'package:kayicho/shared/theme.dart';
import 'package:table_calendar/table_calendar.dart';

DateTime today = DateTime.now();

Container calendar = Container(
  margin: const EdgeInsets.fromLTRB(15, 48, 15, 20),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(25),
    color: darkTheme.colorScheme.onPrimary,
  ),
  child: TableCalendar(
    calendarStyle: const CalendarStyle(),
    headerStyle: const HeaderStyle(
      formatButtonVisible: false,
      titleCentered: true,
    ),
    focusedDay: today,
    firstDay: DateTime(2023, 5, 1),
    lastDay: DateTime(2023, 12, 31),
  ),
);
