// home screen
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kayicho/shared/theme.dart';
import 'package:kayicho/widgets/calendar.dart';
import 'package:kayicho/widgets/filter_chip.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime today = DateTime.now();
  bool bisSelected = false;
  bool lisSelected = false;
  bool disSelected = false;
  Color buttonColor = const Color(0xFF40CC7D);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkTheme.colorScheme.background,
      appBar: AppBar(
        backgroundColor: darkTheme.colorScheme.background,
        // Profile icon button
        leading: IconButton(
          padding: const EdgeInsets.only(left: 20),
          onPressed: () {},
          icon: const CircleAvatar(
            radius: 18,
            backgroundImage: AssetImage('assets/face1.png'),
          ),
        ),
        title: Text(
          'Kaycho',
          style: GoogleFonts.inter(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        actions: [
          // Google Pay icon button
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/bill');
            },
            icon: Image.asset('assets/google-pay.png'),
          ),
          const SizedBox(width: 20),
        ],
      ),
      body: Column(
        //calender
        children: [
          const Calender(),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    MyFilterChip(labelText: 'Breakfast'),
                    MyFilterChip(labelText: 'Lunch'),
                    MyFilterChip(labelText: 'Dinner'),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 50),
          ElevatedButton(
            style: ButtonStyle(
              overlayColor: MaterialStateProperty.resolveWith<Color?>(
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.pressed)) {
                    return const Color(0xFF0A4624);
                  }
                },
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              backgroundColor: MaterialStateProperty.all(buttonColor),
              padding: const MaterialStatePropertyAll(
                  EdgeInsets.symmetric(vertical: 14, horizontal: 130)),
            ),
            child: Text(
              'Add',
              style: GoogleFonts.inter(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            onPressed: () {
              if (bisSelected) {
                print('breakfast');
              }
              if (lisSelected) {
                print('lunch');
              }
              if (disSelected) {
                print('dinner');
              }
              print('added');
            },
          ),
        ],
      ),
    );
  }
}
