import 'package:flutter_modular/flutter_modular.dart';
import 'package:setsistemas/app/modules/home%20/home_page_view.dart';
import 'package:setsistemas/app/modules/home%20/menu/menu_page_view.dart';
import 'package:setsistemas/app/modules/home%20/menu/widgets/tipo_dependente_widget.dart';
import 'package:setsistemas/store/menu.store.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [Bind.lazySingleton<MenuStore>((i) => MenuStore())];

  @override
  List<ModularRoute> get routes => [
        ChildRoute("/", child: (context, args) => const HomePageViewWidget()),
        ChildRoute("/menu/",
            child: (context, args) => const MenuPageViewWidget()),
        ChildRoute("/dependentes/",
            child: (context, args) => const TipoDependenteWidget()),
      ];
}
