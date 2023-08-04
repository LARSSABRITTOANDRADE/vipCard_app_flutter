import 'package:flutter/material.dart';
import 'package:setsistemas/app/core/ui/widgets/appbar/appbar_widget.dart';
import 'package:setsistemas/app/modules/cadastro/pessoa/cadastro_page_body.dart';

class CadastroPageViewWidget extends StatelessWidget {
  const CadastroPageViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBarWidget(
         label: "Cadastro",
        child: CadastroPageBodyWidget());
  }
}
