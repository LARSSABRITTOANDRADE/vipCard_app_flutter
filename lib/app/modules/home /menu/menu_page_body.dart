import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:setsistemas/app/core/ui/widgets/button/flat_button_widget.dart';
import 'package:setsistemas/app/modules/auth/sign-in/widgets/cpf_widget.dart';
import 'package:setsistemas/app/modules/cadastro/pessoa/widgets/email_widget.dart';
import 'package:setsistemas/app/modules/cadastro/pessoa/widgets/name_widget.dart';
import 'package:setsistemas/app/modules/home%20/menu/widgets/id_usuario_widget.dart';
import 'package:setsistemas/app/modules/home%20/menu/widgets/tipo_dependente_widget.dart';
import 'package:setsistemas/store/menu.store.dart';

class MenuPageBodyWidget extends StatelessWidget {
  MenuPageBodyWidget({super.key});

  final MenuStore state = Modular.get<MenuStore>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: ReactiveForm(
              formGroup: state.formGroup,
              child: const Column(
                children: [
                  SizedBox(height: 15),
                  IdUsuarioWidget(),
                  SizedBox(height: 15),
                  NameWidget(),
                  SizedBox(height: 15),
                  TipoDependenteWidget(),
                  SizedBox(height: 15),
                  CpfWidget(),
                  SizedBox(height: 15),
                  EmailWidget(),
                  SizedBox(height: 30),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                FlatButtonWidget(
                  icon: Icons.person,
                  label: "Menu Dependentes",
                  onPressed: () {
                    Modular.to.pushNamed('/home/dependentes/');
                  },
                ),
                const SizedBox(height: 10),
                FlatButtonWidget(
                  label: "Meus Veículos",
                  icon: Icons.car_rental,
                  onPressed: () {
                    Modular.to.pushNamed('/home/veiculos/');
                  },
                ),
                const SizedBox(height: 10),
                FlatButtonWidget(
                    onPressed: () {
                      Modular.to.pushNamed('/home/financeiro/');
                    },
                    icon: Icons.attach_money,
                    label: "Financeiro"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
