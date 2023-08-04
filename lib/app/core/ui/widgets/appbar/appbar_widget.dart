import 'package:flutter/material.dart';
import 'package:setsistemas/app/core/ui/theme/app_background.gradient.dart';
import 'package:setsistemas/app/core/ui/theme/colors.dart';


class AppBarWidget extends StatelessWidget {
  final String label;
  final Widget child;
  const AppBarWidget({super.key, this.label = "", required this.child,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: primary,
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(60),
          ),
        ),
        title: Text(
          label,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            color: textBlack,
          ),
        ),
      ),
      body: child,
    );
  }
}
