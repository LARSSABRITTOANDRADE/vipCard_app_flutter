import 'package:flutter/material.dart';
import 'package:setsistemas/app/core/ui/widgets/input/input_tex_widget.dart';

class TipoDependenteWidget extends StatelessWidget {
  const TipoDependenteWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const InputTextWidget(
        label: "Tipo de Dependente", formControlName: "nm_dependente");
  }
}
