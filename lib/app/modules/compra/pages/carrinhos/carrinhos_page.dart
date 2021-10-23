import 'package:flutter_modular/flutter_modular.dart';
import 'package:loja_carrinho_de_compras/app/modules/compra/pages/carrinhos/carrinhos_store.dart';
import 'package:flutter/material.dart';

class CarrinhosPage extends StatefulWidget {
  final String title;
  const CarrinhosPage({Key? key, this.title = 'CarrinhosPage'}) : super(key: key);
  @override
  CarrinhosPageState createState() => CarrinhosPageState();
}
class CarrinhosPageState extends State<CarrinhosPage> {
  final CarrinhosStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}