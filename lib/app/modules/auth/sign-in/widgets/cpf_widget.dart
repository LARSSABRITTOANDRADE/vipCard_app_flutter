import 'package:flutter/material.dart';
import 'package:setsistemas/app/core/ui/widgets/input/input_tex_widget.dart';

class CpfWidget extends StatelessWidget {
  const CpfWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InputTextWidget(
      key: UniqueKey(),
      label: 'CPF',
      formControlName: 'nm_cpf',
    );
  }
}
