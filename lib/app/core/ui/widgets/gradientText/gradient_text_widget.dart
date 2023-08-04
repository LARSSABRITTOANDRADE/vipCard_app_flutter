import 'package:flutter/material.dart';
import 'package:setsistemas/app/core/ui/theme/app_background.gradient.dart';

class GradientTextWidget extends StatelessWidget {
  final String text;
  final TextStyle style;
  final Gradient gradient;
  const GradientTextWidget({super.key,this.text = "",required this.style,required this.gradient});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(text,style: style,
      ),
    );
  }
}
