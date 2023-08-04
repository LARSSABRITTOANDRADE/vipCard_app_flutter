import 'package:flutter/material.dart';
import 'package:setsistemas/app/core/ui/theme/colors.dart';
import 'package:setsistemas/app/modules/cadastro/pessoa/cadastro_page_body.dart';

class CadastroPageViewWidget extends StatelessWidget {
  const CadastroPageViewWidget({super.key});

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
          "Cadastro",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      body: CadastroPageBodyWidget(),
    );
  }
}
