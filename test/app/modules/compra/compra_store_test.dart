import 'package:flutter_test/flutter_test.dart';
import 'package:loja_carrinho_de_compras/app/modules/compra/compra_store.dart';
 
void main() {
  late CompraStore store;

  setUpAll(() {
    store = CompraStore();
  });

  test('increment count', () async {
    expect(store.state, equals(0));
    store.update(store.state + 1);
    expect(store.state, equals(1));
  });
}