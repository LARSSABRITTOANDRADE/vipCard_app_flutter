import 'package:flutter/material.dart';
import 'package:setsistemas/app/core/ui/widgets/input/input_tex_widget.dart';

class PasswordWidget extends StatelessWidget {
  const PasswordWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InputTextWidget(
      key: UniqueKey(),
      isPassword: true,
      label: 'Senha',
      formControlName: 'nm_senha',
    );
  }
}
