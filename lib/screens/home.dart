// home screen
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kayicho/shared/theme.dart';
import 'package:kayicho/widgets/calendar.dart';
import 'package:kayicho/widgets/choice_card.dart';
import 'package:firebase_auth/firebase_auth.dart';
import "package:kayicho/extension.dart";

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
    // extract data from provider
    final user = FirebaseAuth.instance.currentUser!;
    final name = user.displayName!.split(' ')[0].capitalize();
    final image = Random().nextInt(4) + 1;
    return Scaffold(
      backgroundColor: darkTheme.colorScheme.background,
      appBar: AppBar(
        backgroundColor: darkTheme.colorScheme.background,
        // Profile icon button
        leading: IconButton(
          padding: const EdgeInsets.only(left: 20),
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  // TODO: Style the dialog box
                  return Dialog(
                    child: ListTile(
                      title: Text('Hi $name'),
                      trailing: TextButton(
                        onPressed: () {
                          FirebaseAuth.instance.signOut();
                          Navigator.pop(context);
                        },
                        child: const Text('Logout'),
                      ),
                    ),
                  );
                });
          },
          icon: CircleAvatar(
            radius: 18,
            backgroundImage: AssetImage('assets/face$image.png'),
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
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          //calender
          children: [
            const Calender(),
            const ChoiceCard(),
            ElevatedButton(
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return const Color(0xFF0A4624);
                    }
                    return null;
                  },
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                backgroundColor: MaterialStateProperty.all(buttonColor),
                padding: const MaterialStatePropertyAll(
                    EdgeInsets.symmetric(vertical: 14, horizontal: 100)),
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
      ),
    );
  }
}
