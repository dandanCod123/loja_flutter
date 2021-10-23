import 'package:loja_carrinho_de_compras/app/modules/produtos/produtos_Page.dart';
import 'package:loja_carrinho_de_compras/app/modules/produtos/produtos_Page.dart';
import 'package:loja_carrinho_de_compras/app/modules/produtos/produtos_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ProdutosModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => ProdutosStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/:nomeLoja', 
    child: (_, args) => ProdutosPage()),
    ChildRoute('/', child: (_, args) => ProdutosPage()),
  ];
}
