import 'package:flutter/material.dart';
import 'package:setsistemas/app/core/ui/widgets/input/input_tex_widget.dart';

class IdUsuarioWidget extends StatelessWidget {
  const IdUsuarioWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const InputTextWidget(
        label: "ID do Usuário", formControlName: "id_usuario");
  }
}
