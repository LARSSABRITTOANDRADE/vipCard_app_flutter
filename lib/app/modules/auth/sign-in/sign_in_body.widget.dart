import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:setsistemas/app/core/ui/theme/colors.dart';
import 'package:setsistemas/app/core/ui/widgets/app_logo.widget/app_logo_widget.dart';
import 'package:setsistemas/app/core/ui/widgets/button/flat_button_widget.dart';
import 'package:setsistemas/app/modules/auth/sign-in/widgets/elevatedbutton_widget.dart';

class SignInBodyWidget extends StatelessWidget {
  const SignInBodyWidget({super.key});

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
                child: Form(
                  child: Column(
                    children: [
                      const SizedBox(height: 80),
                      TextField(
                        decoration: InputDecoration(
                          enabledBorder: InputBorder.none,
                          filled: true,
                          label: const Text('CPF'),
                          prefixIcon: Icon(
                            Icons.person,
                            color: Colors.grey.shade500,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextField(
                        decoration: InputDecoration(
                            enabledBorder: InputBorder.none,
                            filled: true,
                            label: const Text('Senha'),
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.grey.shade500,
                            ),
                            suffixIcon: Icon(
                              Icons.remove_red_eye_outlined,
                              color: Colors.grey.shade500,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                color: primary,
                                width: 2.0,
                              ),
                            )),
                      ),
                      const SizedBox(height: 50),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          FlatButtonWidget(
                            label: "Entrar",
                            onPressed: () {
                              Modular.to.pushNamed('/home/');
                            },
                          ),
                          const SizedBox(height: 10),
                          const ElevatedButtonWidget(label: "Primeiro Acesso")
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
