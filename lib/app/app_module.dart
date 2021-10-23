import 'package:flutter_modular/flutter_modular.dart';


import 'modules/compra/compra_module.dart';
import 'modules/loja/loja_module.dart';

import 'modules/produtos/produtos_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: LojaModule()),
    ModuleRoute('/produto', module: ProdutosModule()),
    ModuleRoute('/compra', module: CompraModule()),
  ];

}