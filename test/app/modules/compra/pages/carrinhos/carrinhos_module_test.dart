import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_test/modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:loja_carrinho_de_compras/app/modules/compra/pages/carrinhos/carrinhos_module.dart';
 
void main() {

  setUpAll(() {
    initModule(CarrinhosModule());
  });
}