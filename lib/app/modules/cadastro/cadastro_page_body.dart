import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:setsistemas/app/core/ui/widgets/button/flat_button_widget.dart';
import 'package:setsistemas/app/core/ui/widgets/input/input_radio.widget.dart';
import 'package:setsistemas/app/modules/auth/sign-in/widgets/cpf_widget.dart';
import 'package:setsistemas/app/modules/auth/sign-in/widgets/password_widget.dart';
import 'package:setsistemas/app/modules/cadastro/widgets/confirmacao_password_widget.dart';
import 'package:setsistemas/app/modules/cadastro/widgets/email_widget.dart';
import 'package:setsistemas/app/modules/cadastro/widgets/name_widget.dart';
import 'package:setsistemas/app/modules/cadastro/widgets/telefone_widget.dart';
import 'package:setsistemas/store/cadastro.store.dart';

class CadastroPageBodyWidget extends StatelessWidget {
  CadastroPageBodyWidget({super.key});

  final CadastroStore state = Modular.get<CadastroStore>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: ReactiveForm(
        formGroup: state.formGroup,
        child: Column(
          children: [
            const Text("Preencha os dados abaixo para começar o cadastro!"),
            const SizedBox(height: 10),
            Center(
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 70,
                child: ClipOval(
                  child: Image.asset(
                    "assets/avatar.png",
                    fit: BoxFit.cover,
                    matchTextDirection: true,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            const NameWidget(),
            const SizedBox(height: 15),
            const Wrap(
              children: [
                RadioInputWidget(
                    formControlName: "nm_sexo_masculino", label: "Masculino"),
                RadioInputWidget(
                    formControlName: "nm_sexo_feminino", label: "Feminino"),
              ],
            ),
            const SizedBox(height: 15),
            const CpfWidget(),
            const SizedBox(height: 15),
            const TelefoneWidget(),
            const SizedBox(height: 15),
            const EmailWidget(),
            const SizedBox(height: 15),
            const PasswordWidget(),
            const SizedBox(height: 15),
            const ConfirmacaoPassWordWidget(),
            const SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                FlatButtonWidget(
                  label: "Confirmar",
                  onPressed: () {},
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
