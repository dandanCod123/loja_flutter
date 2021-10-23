import 'package:flutter_modular/flutter_modular.dart';
import 'package:loja_carrinho_de_compras/app/models/produto_model.dart';
import 'package:loja_carrinho_de_compras/app/modules/compra/compra_store.dart';
import 'package:flutter/material.dart';

class CompraPage extends StatefulWidget {
  final ProdutotModel produtotModel;
  final String title;
  const CompraPage({
    Key? key, 
  this.title = 'Compra', 
  required this.produtotModel,
  }) : super(key: key);
  @override
  CompraPageState createState() => CompraPageState();
}
class CompraPageState extends State<CompraPage> {
  final CompraStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.produtotModel.name),
        actions: <Widget>[
          IconButton( icon: Icon(Icons.shopping_cart),
          onPressed: (){
            Modular.to.pushNamed('/compra/carrinho');
          },)
        ],
      ),
      body: Column(

        children: <Widget>[],
      ),
    );
  }
}