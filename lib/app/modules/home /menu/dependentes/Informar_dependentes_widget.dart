import 'package:flutter/material.dart';
import 'package:setsistemas/app/core/ui/theme/colors.dart';

class InformarDependentesWidget extends StatelessWidget {
  const InformarDependentesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: green,
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.elliptical(150, 25),
          ),
        ),
        title: const Text(
          "Meus Dependentes",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      body: const Card(),
    );
  }
}
