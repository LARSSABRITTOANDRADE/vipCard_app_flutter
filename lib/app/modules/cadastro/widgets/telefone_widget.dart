import 'package:flutter/material.dart';
import 'package:setsistemas/app/core/ui/widgets/input/input_tex_widget.dart';

class TelefoneWidget extends StatelessWidget {
  const TelefoneWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const InputTextWidget(label: "Telefone", formControlName: "nm_telefone");
  }
}

