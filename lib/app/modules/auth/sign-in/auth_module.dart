import 'package:flutter_modular/flutter_modular.dart';
import 'package:setsistemas/app/modules/auth/sign-in/sign_in_view.widget.dart';

class AuthModule extends Module{

  @override
  List<ModularRoute> get routes =>
      [ChildRoute("/", child: (context, args) => const SignInViewWidget())];
}