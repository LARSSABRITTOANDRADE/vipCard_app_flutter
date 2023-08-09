import 'package:flutter/material.dart';
import 'package:setsistemas/app/core/ui/widgets/input/input_tex_widget.dart';

class PassoWordWidget extends StatelessWidget {
  const PassoWordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const InputTextWidget(label: "Senha", formControlName: "nm_senha");
  }
}
