import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kayicho/shared/theme.dart';
import 'package:kayicho/widgets/filter_chip.dart';

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.symmetric(horizontal: 15),
      padding: const EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: darkTheme.colorScheme.onBackground,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 0, 10),
            child: Text(
              "Today's food",
              style: GoogleFonts.inter(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const ButtonBar(
            alignment: MainAxisAlignment.spaceEvenly,
            children: [
              MyFilterChip(labelText: 'Breakfast'),
              MyFilterChip(labelText: 'Lunch'),
              MyFilterChip(labelText: 'Dinner'),
            ],
          )
        ],
      ),
    );
  }
}
