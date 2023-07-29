import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:setsistemas/app/core/ui/theme/colors.dart';

class SwitchInputWidget extends StatefulWidget {
  final String formControlName;
  final String color;
  final bool disabled;
  final void Function(bool?)? onChanged;

  const SwitchInputWidget(
      {Key? key,
      required this.formControlName,
      this.color = 'primary',
      this.disabled = false,
      this.onChanged})
      : super(key: key);

  @override
  State<SwitchInputWidget> createState() => _SwitchInputWidgetState();
}

class _SwitchInputWidgetState extends State<SwitchInputWidget> {
  @override
  Widget build(BuildContext context) {
    return ReactiveSwitch(
        key: UniqueKey(),
        onChanged: (form) {
          if (widget.onChanged != null) widget.onChanged!(form.value);
        },
        formControlName: widget.formControlName,
        activeColor: getColor(widget.color));
  }
}
