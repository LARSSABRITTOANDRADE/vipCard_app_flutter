import 'package:flutter_modular/flutter_modular.dart';
import 'package:setsistemas/app/modules/cadastro/cadastro_page_view.dart';
import 'package:setsistemas/store/cadastro.store.dart';

class CadastroModule extends Module {
  @override
  List<Bind> get binds =>
      [Bind.lazySingleton<CadastroStore>((i) => CadastroStore())];

  @override
  List<ModularRoute> get routes => [
        ChildRoute("/",
            child: (context, args) => const CadastroPageViewWidget()),
      ];
}
