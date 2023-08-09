import 'package:flutter/material.dart';
import 'package:setsistemas/app/modules/auth/sign-in/sign_in_body.widget.dart';

class SignInViewWidget extends StatelessWidget {
  const SignInViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/back_login.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SignInBodyWidget(),
      ),
    );
  }
}
