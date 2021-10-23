import 'package:flutter_test/flutter_test.dart';
import 'package:loja_carrinho_de_compras/app/modules/produtos/produtos_store.dart';
 
void main() {
  late ProdutosStore store;

  setUpAll(() {
    store = ProdutosStore();
  });

  test('increment count', () async {
    expect(store.state, equals(0));
    store.update(store.state + 1);
    expect(store.state, equals(1));
  });
}