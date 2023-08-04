import 'package:flutter/material.dart';
import 'package:setsistemas/app/core/ui/theme/colors.dart';

class CadastroVeiculoView extends StatelessWidget {
  const CadastroVeiculoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: green,
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.elliptical(150,25)
          )
        ),
        title: const Text(
          "Cadastro de Veículos",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
