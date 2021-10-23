import 'package:loja_carrinho_de_compras/app/modules/loja/loja_Page.dart';
import 'package:loja_carrinho_de_compras/app/modules/loja/loja_Page.dart';
import 'package:loja_carrinho_de_compras/app/modules/loja/loja_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LojaModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => LojaStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => LojaPage()),
    ChildRoute('/', child: (_, args) => LojaPage()),
  ];
}
