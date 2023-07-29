import 'package:flutter/material.dart';
import 'package:setsistemas/app/core/ui/widgets/input/input_tex_widget.dart';

class CpfWidget extends StatelessWidget {
  const CpfWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const InputTextWidget(label: "CPF", formControlName: "nm_cpf");
  }
}
