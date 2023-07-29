import 'package:flutter/material.dart';
import 'package:setsistemas/app/core/ui/theme/colors.dart';
import 'package:setsistemas/app/core/ui/widgets/card/card_widget.dart';

class VeiculosWidget extends StatelessWidget {
  const VeiculosWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: green,
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.elliptical(150, 25),
          ),
        ),
        title: const Text(
          "Meus Veículos",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            CardWidget(
              text: "Nome: ",
              subtitle: "CPF: ",
              title: "E-mail: ",
            ),
          ],
        ),
      ),
    );
  }
}
