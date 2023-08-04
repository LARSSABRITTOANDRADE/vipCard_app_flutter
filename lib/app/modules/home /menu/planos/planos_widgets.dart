import 'package:flutter/material.dart';
import 'package:setsistemas/app/core/ui/theme/app_background.gradient.dart';
import 'package:setsistemas/app/core/ui/theme/colors.dart';
import 'package:setsistemas/app/core/ui/widgets/appbar/appbar_widget.dart';
import 'package:setsistemas/app/core/ui/widgets/card/card_gradient_widget.dart';
import 'package:setsistemas/app/core/ui/widgets/gradientText/gradient_text_widget.dart';

class PlanosWidget extends StatelessWidget {
  const PlanosWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBarWidget(
      label: "Ativar Plano",
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GradientTextWidget(
                text: "Escolha um plano",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                ),
                gradient: LinearGradient(
                    colors: [secondary,primary],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
