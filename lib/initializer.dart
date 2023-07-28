import 'package:flutter_modular/flutter_modular.dart';
import 'package:setsistemas/app_module.dart';

class Initializer {
  start() async {
    await Modular.isModuleReady<AppModule>();
    Modular.to.navigate("/splash/");
  }
}
