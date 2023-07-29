import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:setsistemas/app/core/ui/theme/colors.dart';

class RadioInputWidget<T> extends StatefulWidget {
  final String formControlName;
  final String color;
  final bool disabled;
  final String label;
  final T? value;

  const RadioInputWidget({
    Key? key,
    required this.formControlName,
    required this.label,
    this.value,
    this.color = 'primary',
    this.disabled = false,
  }) : super(key: key);

  @override
  State<RadioInputWidget> createState() => _RadioInputWidgetState<T>();
}

class _RadioInputWidgetState<T> extends State<RadioInputWidget> {
  @override
  Widget build(BuildContext context) {
    final form = ReactiveForm.of(context) as FormGroup;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        ReactiveRadio<T>(
            key: UniqueKey(),
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            formControlName: widget.formControlName,
            value: widget.value,
            toggleable: widget.disabled,
            activeColor: getColor(widget.color)),
        GestureDetector(
          child: Text(widget.label),
          onTap: () => form
              .findControl(widget.formControlName)
              ?.updateValue(widget.value),
        )
      ],
    );
  }
}
