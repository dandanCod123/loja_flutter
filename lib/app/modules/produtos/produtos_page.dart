import 'package:flutter_modular/flutter_modular.dart';
import 'package:loja_carrinho_de_compras/app/models/produto_model.dart';
import 'package:loja_carrinho_de_compras/app/modules/produtos/produtos_module.dart';
import 'package:loja_carrinho_de_compras/app/modules/produtos/produtos_store.dart';
import 'package:flutter/material.dart';

class ProdutosPage extends StatefulWidget {
  final String nomeDaloja;
  const ProdutosPage({Key? key, this.nomeDaloja = 'ProdutosPage'}) : super(key: key);
  @override
  ProdutosPageState createState() => ProdutosPageState();
}
class ProdutosPageState extends State<ProdutosPage> {
  final ProdutosStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.nomeDaloja),
      ),
      body: ListView.builder(itemBuilder: (BuildContext context, int index) {
        return ListTile(
         onTap: (){
           Modular.to.pushNamed('/compra',arguments: ProdutotModel(
             id:index,
             name:'produto $index',
             price: 3.0*index));
             
         },
          
          title: Text('produtos $index'),
          subtitle: Text('melhor produto '),
          leading: CircleAvatar(
            child: Text('p $index'),
          ),

        );
      },
      ),
    );
  }
}