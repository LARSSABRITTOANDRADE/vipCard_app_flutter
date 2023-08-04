import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:setsistemas/app/core/ui/widgets/button/flat_button_widget.dart';
import 'package:setsistemas/app/core/ui/widgets/input/input_radio.widget.dart';
import 'package:setsistemas/app/modules/cadastro/pessoa/widgets/name_widget.dart';
import 'package:setsistemas/store/cadastro.store.dart';

class CadastroVeiculosBody extends StatelessWidget {
   CadastroVeiculosBody({super.key});

  final CadastroStore state = Modular.get<CadastroStore>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ReactiveForm(
            formGroup: state.formGroup,
            child: SingleChildScrollView(
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
                  const SizedBox(height: 10),
                  const NameWidget(),
                  const SizedBox(height: 10),
                   const Wrap(
                    children: [
                      RadioInputWidget(
                          formControlName: "nm_sexo_masculino", label: "Masculino"),
                      RadioInputWidget(
                          formControlName: "nm_sexo_feminino", label: "Feminino"),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      FlatButtonWidget(
                        label: "Confirmar",
                        onPressed: () => Modular.to.pushNamed('/home/'),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
    );
  }
}

