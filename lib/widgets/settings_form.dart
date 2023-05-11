import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kayicho/shared/theme.dart';

class SettingsForm extends StatefulWidget {
  const SettingsForm({super.key});

  @override
  State<SettingsForm> createState() => _SettingsFormState();
}

class _SettingsFormState extends State<SettingsForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Pricing',
          style: TextStyle(fontSize: 18.0),
        ),
        const SizedBox(height: 20.0),
        TextFormField(
          cursorColor: Colors.black,
          style: const TextStyle(color: Colors.black),
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            fillColor: Colors.white,
            filled: true,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
              borderRadius: BorderRadius.all(Radius.circular(25)),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
              borderRadius: BorderRadius.all(Radius.circular(25)),
            ),
            hintText: 'Breakfast price',
          ),
        ),
        const SizedBox(height: 20.0),
        TextFormField(
          cursorColor: Colors.black,
          style: const TextStyle(color: Colors.black),
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            fillColor: Colors.white,
            filled: true,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
              borderRadius: BorderRadius.all(Radius.circular(25)),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
              borderRadius: BorderRadius.all(Radius.circular(25)),
            ),
            hintText: 'Lunch price',
          ),
        ),
        const SizedBox(height: 20.0),
        TextFormField(
          cursorColor: Colors.black,
          style: const TextStyle(color: Colors.black),
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            fillColor: Colors.white,
            filled: true,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
              borderRadius: BorderRadius.all(Radius.circular(25)),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
              borderRadius: BorderRadius.all(Radius.circular(25)),
            ),
            hintText: 'Dinner price',
          ),
        ),
        const SizedBox(height: 40.0),
        ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            backgroundColor: MaterialStateProperty.all(Colors.black),
            padding: const MaterialStatePropertyAll(
                EdgeInsets.symmetric(vertical: 15, horizontal: 30)),
          ),
          child: Text(
            'Update',
            style: GoogleFonts.inter(
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
