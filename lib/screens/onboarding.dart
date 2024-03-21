import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kayicho/provider/google_signin.dart';
import 'package:provider/provider.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: isLoading
            ? const CircularProgressIndicator(
                color: Colors.white,
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.food_bank,
                    color: Colors.white,
                    size: 40,
                  ),
                  // Padding(
                  //   padding:
                  //       const EdgeInsets.only(left: 50, right: 50, bottom: 20, top: 20),
                  //   child: TextField(
                  //     maxLines: 1,
                  //     cursorColor: Colors.black,
                  //     style: const TextStyle(color: Colors.black),
                  //     controller: _textController,
                  //     decoration: InputDecoration(
                  //       constraints: const BoxConstraints(maxHeight: 45),
                  //       focusedBorder: OutlineInputBorder(
                  //         borderSide: BorderSide.none,
                  //         borderRadius: BorderRadius.circular(10),
                  //       ),
                  //       border: OutlineInputBorder(
                  //         borderSide: BorderSide.none,
                  //         borderRadius: BorderRadius.circular(10),
                  //       ),
                  //       fillColor: Colors.white,
                  //       filled: true,
                  //       labelText: 'What is your name ?',
                  //       labelStyle: GoogleFonts.inter(
                  //         color: Colors.black,
                  //         fontSize: 16,
                  //         fontWeight: FontWeight.w300,
                  //       ),
                  //       floatingLabelBehavior: FloatingLabelBehavior.never,
                  //       prefixIcon: const Icon(Icons.person_2_outlined),
                  //       prefixIconColor: Colors.grey,
                  //     ),
                  //   ),
                  // ),
                  ElevatedButton(
                    onPressed: () async {
                      setState(() {
                        isLoading = true;
                      });

                      // if (_textController.text.trim().isNotEmpty) {
                      final provider = Provider.of<GoogleSignInProvider>(
                          context,
                          listen: false);
                      await provider.googleLogin();
                      setState(() {
                        isLoading = false;
                      });
                      // }
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    ),
                    child: Text(
                      'Get Started',
                      style: GoogleFonts.inter(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )
                ],
              ),
      ),
    );
  }
}
