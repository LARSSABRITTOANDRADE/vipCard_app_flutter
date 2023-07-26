import 'package:flutter_modular/flutter_modular.dart';
import 'package:setsistemas/app/modules/home%20/home_page_view.dart';

class HomeModule extends Module{

  @override
  List<ModularRoute> get routes =>
      [ChildRoute("/", child: (context, args) => const HomePageViewWidget())];
}