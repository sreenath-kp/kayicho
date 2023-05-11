import 'package:flutter/material.dart';
import 'package:kayicho/shared/theme.dart';

class DayView extends StatefulWidget {
  final DateTime date;
  const DayView(this.date, {super.key});

  @override
  State<DayView> createState() => _DayViewState();
}

class _DayViewState extends State<DayView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: darkTheme.colorScheme.onPrimary,
      child: Column(
        children: [
          const SizedBox(height: 20),
          Text(
            '${widget.date.day}/${widget.date.month}/${widget.date.year}',
            style: TextStyle(
              color: darkTheme.colorScheme.primary,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 20),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'OK',
              style: TextStyle(
                color: darkTheme.colorScheme.primary,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
