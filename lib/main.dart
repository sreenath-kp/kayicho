import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kayicho/provider/google_signin.dart';
import 'package:kayicho/screens/bill_screen.dart';
import 'package:kayicho/screens/home.dart';
import 'package:kayicho/screens/onboarding.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:kayicho/screens/spashscreen.dart';
import 'package:provider/provider.dart';
// import 'package:kayicho/services/auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // final auth = Auth();
    return ChangeNotifierProvider(
      create: (context) => GoogleSignInProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/home': (context) => const HomeScreen(),
          '/bill': (context) => const BillScreen(),
        },
        home: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (contex, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const SplashScreen();
            }
            if (snapshot.hasData) {
              return HomeScreen();
            }
            return const OnBoardingScreen();
          },
        ),
      ),
    );
  }
}
