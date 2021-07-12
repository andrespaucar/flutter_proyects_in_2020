import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['Uno','Dos','Tres','Cuatro'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Tap'),
      ),
      body: ListView(
        children: _crearItemsCorta()
      ),
    );
  }

  List<Widget> _crearItems(){
    List<Widget> lista = new List<Widget>();

    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );
      lista..add(tempWidget)
          ..add(Divider( thickness: 1.0,));
    }

    return lista;
  }

  List<Widget> _crearItemsCorta(){
    return opciones.map((item) {
      return ListTile(
        title: Text(item + '!'),
        subtitle: Text('Cualquier cosa'),
        leading: Icon(Icons.account_balance),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: (){},
      );
    }).toList();
 
  }

}