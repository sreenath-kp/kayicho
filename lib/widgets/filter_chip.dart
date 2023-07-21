import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyFilterChip extends StatefulWidget {
  final String labelText;

  const MyFilterChip({super.key, required this.labelText});

  @override
  State<MyFilterChip> createState() => _MyFilterChipState();
}

class _MyFilterChipState extends State<MyFilterChip> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return FilterChip(
      selected: isSelected,
      showCheckmark: false,
      label: SizedBox(
          width: 75,
          child: Center(
              child: isSelected
                  ? const Icon(
                      Icons.check,
                      size: 16,
                    )
                  : Text(widget.labelText))),
      labelStyle: GoogleFonts.inter(
        color: Colors.black,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      onSelected: (value) {
        setState(() {
          isSelected = value ? true : false;
        });
      },
      backgroundColor: const Color(0xFFFF9502),
      selectedColor: const Color(0xFF40CC7D),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      padding: const EdgeInsets.symmetric(vertical: 20),
    );
  }
}
