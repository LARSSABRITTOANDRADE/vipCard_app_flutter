import 'package:flutter/material.dart';
import 'package:setsistemas/app/core/ui/widgets/input/input_tex_widget.dart';

class ConfirmacaoPassWordWidget extends StatelessWidget {
  const ConfirmacaoPassWordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const InputTextWidget(
      label: "Confirmação senha",
      formControlName: "nm_confirmacao",
    );
  }
}
