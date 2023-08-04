import 'package:flutter/material.dart';
import 'package:setsistemas/app/core/ui/widgets/appbar/appbar_widget.dart';

class InformarDependentesWidget extends StatelessWidget {
  const InformarDependentesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppBarWidget(
      label: "Meus Dependentes",
        child: SafeArea(
            child: Column()),
    );
  }
}
