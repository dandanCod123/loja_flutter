import 'package:loja_carrinho_de_compras/app/modules/compra/compra_Page.dart';
import 'package:loja_carrinho_de_compras/app/modules/compra/compra_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'pages/carrinhos/carrinhos_module.dart';


class CompraModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => CompraStore()),
  ];

  @override
  final List<ModularRoute> routes = [
     
    ChildRoute('/', child: (_, args) => const CompraPage()),
     ModuleRoute('/carrinho', module:   CarrinhosModule()),
  ];
}

