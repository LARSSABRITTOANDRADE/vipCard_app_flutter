import 'package:flutter/material.dart';
import 'package:setsistemas/app/core/ui/theme/colors.dart';

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 20, top: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80),
          color: white,
        ),
      child: const CircleAvatar(
        radius: 30,
        backgroundImage: AssetImage("assets/avatar.png"),
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
