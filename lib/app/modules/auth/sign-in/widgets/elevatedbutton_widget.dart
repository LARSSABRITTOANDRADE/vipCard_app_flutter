
import 'package:flutter/material.dart';
import 'package:setsistemas/app/core/ui/theme/colors.dart';
import 'package:setsistemas/app/core/ui/widgets/button/flat_button_widget.dart';

class ElevatedButtonWidget extends StatelessWidget {
  final ButtonExpand? expand;
  final Function? onPressed;
  final String label;
  const ElevatedButtonWidget({super.key, this.expand, this.onPressed, required this.label});



  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      key: UniqueKey(),
      onPressed: onPressed != null ? () => onPressed!() : null,
      style: ElevatedButton.styleFrom(
          elevation: 10,
          minimumSize: const Size(98, 38),
          backgroundColor: green,
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
            color: textBlack
        ),
      ),
    );
  }
}
