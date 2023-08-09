import 'package:flutter/material.dart';
import 'package:setsistemas/app/core/ui/widgets/appbar/appbar_widget.dart';

class ConveniadosWidget extends StatelessWidget {
  const ConveniadosWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppBarWidget(
      label: "Conveniados",
      child: SafeArea(
          child: Column()),
    );
  }
}
