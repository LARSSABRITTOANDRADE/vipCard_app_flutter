import 'package:flutter/material.dart';
import 'package:setsistemas/app/core/ui/widgets/input/input_tex_widget.dart';

class SexoMasculinoWidget extends StatelessWidget {
  const SexoMasculinoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const InputTextWidget(
        label: "Masculino", formControlName: "nm_sexo_masculino");
  }
}
