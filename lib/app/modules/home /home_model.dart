import 'package:flutter_modular/flutter_modular.dart';
import 'package:setsistemas/app/modules/home%20/home_page_view.dart';
import 'package:setsistemas/app/modules/home%20/menu/dependentes/Informar_dependentes_widget.dart';
import 'package:setsistemas/app/modules/home%20/menu/financeiro/financeiro_widget.dart';
import 'package:setsistemas/app/modules/home%20/menu/menu_page_view.dart';
import 'package:setsistemas/app/modules/home%20/menu/veiculos/veiculos_widgets.dart';
import 'package:setsistemas/store/menu.store.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.lazySingleton<MenuStore>((i) => MenuStore()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute("/", child: (context, args) => const HomePageViewWidget()),
        ChildRoute("/menu/",
            child: (context, args) => const MenuPageViewWidget()),
        ChildRoute("/dependentes/",
            child: (context, args) => const InformarDependentesWidget()),
        ChildRoute("/financeiro/",
            child: (context, args) => const FinanceiroWidget()),
        ChildRoute("/veiculos/",
            child: (context, args) => const VeiculosWidget()),
      ];
}
