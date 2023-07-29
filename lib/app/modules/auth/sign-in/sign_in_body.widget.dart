import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:setsistemas/app/core/ui/widgets/app_logo/app_logo_widget.dart';
import 'package:setsistemas/app/core/ui/widgets/button/flat_button_widget.dart';
import 'package:setsistemas/app/modules/auth/sign-in/widgets/cpf_widget.dart';
import 'package:setsistemas/app/modules/auth/sign-in/widgets/elevatedbutton_widget.dart';
import 'package:setsistemas/app/modules/auth/sign-in/widgets/password_widget.dart';
import 'package:setsistemas/store/sign_in.store.dart';

class SignInBodyWidget extends StatelessWidget {
  SignInBodyWidget({super.key});

  final SignInStore state = Modular.get<SignInStore>();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            const SizedBox(height: 80),
            const Padding(padding: EdgeInsets.all(20), child: AppLogo()),
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: ReactiveForm(
                  formGroup: state.formGroup,
                  child: Column(
                    children: [
                      const SizedBox(height: 80),
                      const CpfWidget(),
                      const SizedBox(height: 20),
                      const PasswordWidget(),
                      const SizedBox(height: 50),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          FlatButtonWidget(
                            label: "Entrar",
                            onPressed: () => Modular.to.pushNamed('/home/'),
                          ),
                          const SizedBox(height: 10),
                          ElevatedButtonWidget(
                              onPressed: () =>
                                  Modular.to.pushNamed("/cadastro"),
                              label: "Primeiro Acesso"),
                          const SizedBox(height: 10),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
