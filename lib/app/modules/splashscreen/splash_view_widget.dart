import 'package:flutter/material.dart';
import 'package:setsistemas/app/core/ui/theme/app_background.gradient.dart';

class SplashScreenViewWidget extends StatefulWidget {
  const SplashScreenViewWidget({super.key});

  @override
  State<SplashScreenViewWidget> createState() => _SplashScreenViewWidgetState();
}

class _SplashScreenViewWidgetState extends State<SplashScreenViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/back_load.png"),
                fit: BoxFit.fitWidth),
        ),
        child: Container(
          decoration: const BoxDecoration(gradient: appBackgroundGradient),
          child: const Center(
              child: CircularProgressIndicator(
            color: Colors.white,
          ),
          ),
        ),
    );
  }
}
