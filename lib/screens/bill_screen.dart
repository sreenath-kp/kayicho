import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kayicho/shared/theme.dart';
import 'package:kayicho/widgets/settings_form.dart';
import 'package:kayicho/widgets/bill_view.dart';

class BillScreen extends StatefulWidget {
  const BillScreen({super.key});

  @override
  State<BillScreen> createState() => _BillScreenState();
}

class _BillScreenState extends State<BillScreen> {
  @override
  Widget build(BuildContext context) {
    void showSettingsPanel() {
      showModalBottomSheet(
        context: context,
        builder: (context) => Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 60),
          child: const SettingsForm(),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(25.0),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: darkTheme.colorScheme.background,
      appBar: AppBar(
        title: Text(
          'Your Bills',
          style: GoogleFonts.inter(
            textStyle: const TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        backgroundColor: darkTheme.colorScheme.background,
        actions: [
          IconButton(
            onPressed: () {
              showSettingsPanel();
            },
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
        child: BillView(),
      ),
    );
  }
}
