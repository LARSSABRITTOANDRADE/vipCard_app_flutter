import 'package:flutter/material.dart';
import 'package:setsistemas/app/core/ui/widgets/appbar/appbar_widget.dart';

class VeiculosWidget extends StatelessWidget {
  const VeiculosWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppBarWidget(
      label: "Veículos",
      child: SafeArea(
          child: Column()),
    );
  }
}
