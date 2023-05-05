// home screen
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kayicho/shared/theme.dart';
import 'package:table_calendar/table_calendar.dart';

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
          Container(
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
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: darkTheme.colorScheme.onBackground,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FilterChip(
                      selected: bisSelected,
                      label: const Text('Breakfast'),
                      labelStyle: GoogleFonts.inter(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                      onSelected: (value) {
                        setState(() {
                          bisSelected = value ? true : false;
                        });
                      },
                      backgroundColor: const Color(0xFFFF9502),
                      selectedColor: const Color(0xFF40CC7D),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 30, horizontal: 4),
                    ),
                    FilterChip(
                      selected: lisSelected,
                      label: const Text('Lunch'),
                      labelStyle: GoogleFonts.inter(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                      onSelected: (value) {
                        setState(() {
                          lisSelected = value ? true : false;
                        });
                      },
                      backgroundColor: const Color(0xFFFF9502),
                      selectedColor: const Color(0xFF40CC7D),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 30, horizontal: 16),
                    ),
                    FilterChip(
                      selected: disSelected,
                      label: const Text('Dinner'),
                      labelStyle: GoogleFonts.inter(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                      onSelected: (value) {
                        setState(() {
                          disSelected = value ? true : false;
                        });
                      },
                      backgroundColor: const Color(0xFFFF9502),
                      selectedColor: const Color(0xFF40CC7D),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 30, horizontal: 16),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 50),
          ElevatedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              backgroundColor:
                  MaterialStateProperty.all(const Color(0xFF40CC7D)),
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
            },
          ),
        ],
        // 3 buttons
        // add button
      ),
    );
  }
}
