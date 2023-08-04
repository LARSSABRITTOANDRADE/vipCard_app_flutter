import 'package:flutter/material.dart';
import 'package:setsistemas/app/core/ui/widgets/input/input_tex_widget.dart';

class NameWidget extends StatelessWidget {
  const NameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const InputTextWidget(
        label: "Nome Usuário", formControlName: "nm_nome");
  }
}
