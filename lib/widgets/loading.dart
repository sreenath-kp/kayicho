import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:kayicho/shared/theme.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Center(
        child: SpinKitCircle(
          color: darkTheme.colorScheme.onPrimary,
          size: 80.0,
        ),
      ),
    );
  }
}
