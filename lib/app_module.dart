import 'package:flutter_modular/flutter_modular.dart';
import 'package:setsistemas/app/modules/auth/sign-in/auth_module.dart';
import 'package:setsistemas/app/modules/home%20/home_model.dart';
import 'package:setsistemas/app/modules/splashscreen/splash_module.dart';

class AppModule extends Module{

  AppModule() {
    Modular.setInitialRoute("/auth/");
  }


  @override
  List<ModularRoute> get routes => [
      ModuleRoute('/splash', module: SplashModule()),
      ModuleRoute('/auth', module: AuthModule()),
      ModuleRoute('/home', module: HomeModule()),
  ];
}