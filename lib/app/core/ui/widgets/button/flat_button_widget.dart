import 'package:flutter/material.dart';
import 'package:setsistemas/app/core/ui/theme/colors.dart';

enum ButtonExpand { normal, fit }

class FlatButtonWidget extends StatelessWidget {
  final String label;
  final String? color;
  final ButtonExpand? expand;
  final Function? onPressed;

  const FlatButtonWidget({
    super.key,
    required this.label,
    this.color,
    this.expand,
    this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        key: UniqueKey(),
        onPressed: onPressed != null ? () => onPressed!() : null,
        style: ElevatedButton.styleFrom(
          elevation: 10,
          minimumSize: const Size(98, 38),
          backgroundColor: color != null ? getColor(color!) : green,
          disabledForegroundColor: Colors.grey.withOpacity(0.38),
          disabledBackgroundColor: Colors.grey.withOpacity(0.12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          side: const BorderSide(
            width: 1,
            color: green
          )
        ),
        child: Text(
          label,
          style: const TextStyle(
              color: white,
          ),
        ),
    );
  }
}
