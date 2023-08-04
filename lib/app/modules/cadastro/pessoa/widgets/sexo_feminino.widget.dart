import 'package:flutter/material.dart';
import 'package:setsistemas/app/core/ui/widgets/input/input_tex_widget.dart';

class SexoFeminoWidget extends StatelessWidget {
  const SexoFeminoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const InputTextWidget(
        label: "Feminino", formControlName: "nm_sexo_feminino");
  }
}
