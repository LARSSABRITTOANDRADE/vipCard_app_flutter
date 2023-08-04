import 'package:flutter/material.dart';
import 'package:setsistemas/app/core/ui/theme/app_background.gradient.dart';

class CardGradientWidget extends StatelessWidget {
  const CardGradientWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: appBackgroundGradient,
      ),
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: Container(
                padding: const EdgeInsets.fromLTRB(0,10,5,10),
                child: const Text('',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
