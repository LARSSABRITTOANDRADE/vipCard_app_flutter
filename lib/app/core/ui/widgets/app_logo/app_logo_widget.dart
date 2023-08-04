import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Image(
      image: const AssetImage("assets/logo_client_vertical.png"),
      width: (width / 2),
    );
  }
}
