import 'package:flutter/material.dart';
import 'package:kayicho/screens/bill_screen.dart';
import 'package:kayicho/screens/home.dart';
import 'package:kayicho/screens/onboarding.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        // '/': (context) => const HomeScreen(),
        '/': (context) => const OnBoardingScreen(),
        '/home': (context) => const HomeScreen(),
        '/bill': (context) => const BillScreen(),
      },
    );
  }
}
