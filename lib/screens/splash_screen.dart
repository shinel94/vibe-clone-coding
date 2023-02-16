import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacementNamed("/");
    });

    return Container(
      alignment: Alignment.center,
      child: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset("images/logo.png",
              height: 150, width: 150, fit: BoxFit.cover),
        ),
      ),
    );
  }
}
