import 'package:flutter/material.dart';
import 'package:setsistemas/app/core/ui/widgets/input/input_tex_widget.dart';

class UsernameWidget extends StatelessWidget {
  const UsernameWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InputTextWidget(
      key: UniqueKey(),
      label: 'CPF',
      formControlName: 'CPF',
    );
  }
}
