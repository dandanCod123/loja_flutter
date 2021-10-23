import 'package:flutter_modular/flutter_modular.dart';
import 'package:loja_carrinho_de_compras/app/modules/loja/loja_store.dart';
import 'package:flutter/material.dart';

class LojaPage extends StatefulWidget {
  final String title;
  const LojaPage({Key? key, this.title = 'LojaPage'}) : super(key: key);
  @override
  LojaPageState createState() => LojaPageState();
}
class LojaPageState extends State<LojaPage> {
  final LojaStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          IconButton( icon: Icon(Icons.shopping_cart),
          onPressed: (){
            Modular.to.pushNamed('/compra/carrinho');
          },)
        ],
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
        return ListTile(
          onTap: (){
            Modular.to.pushNamed('/produto/loja $index');
          },
          title: Text('loja $index'),
          subtitle: Text('melhor loja '),

        );
      },
      ),
    );
  }
}