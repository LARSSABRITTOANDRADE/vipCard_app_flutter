import 'package:flutter/material.dart';
import 'package:setsistemas/app/core/ui/widgets/appbar/appbar_widget.dart';

class FinanceiroWidget extends StatelessWidget {
  const FinanceiroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppBarWidget(
      label: "Financeiro",
      child: SafeArea(
          child: Column()),
    );
  }
}
