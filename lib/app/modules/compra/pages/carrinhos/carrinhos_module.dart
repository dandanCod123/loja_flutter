import 'package:loja_carrinho_de_compras/app/modules/compra/pages/carrinhos/carrinhos_Page.dart';
import 'package:loja_carrinho_de_compras/app/modules/compra/pages/carrinhos/carrinhos_Page.dart';
import 'package:loja_carrinho_de_compras/app/modules/compra/pages/carrinhos/carrinhos_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CarrinhosModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => CarrinhosStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => CarrinhosPage()),
    ChildRoute('/', child: (_, args) => CarrinhosPage()),
     
  ];
}
