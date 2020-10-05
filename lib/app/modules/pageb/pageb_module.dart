import 'pageb_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'pageb_page.dart';

class PagebModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $PagebController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => PagebPage()),
      ];

  static Inject get to => Inject<PagebModule>.of();
}
