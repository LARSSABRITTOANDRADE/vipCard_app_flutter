import 'package:flutter_modular/flutter_modular.dart';
import 'package:setsistemas/app/modules/splashscreen/splash_view_widget.dart';

class SplashModule extends Module{

  @override
  List<ModularRoute> get routes =>
      [ChildRoute("/", child: (context, args) => const SplashScreenViewWidget())];
}