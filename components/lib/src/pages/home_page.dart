import 'package:components/src/pages/alert_page.dart';
import 'package:components/src/providers/menu_provider.dart';
import 'package:components/src/utils/icono_string_util.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Component Flutter'),
      ),
      body: _lista(),
    );
  }

  Widget _lista(){
    // print(menuProvider.opciones);
   /* menuProvider.cargarData().then((opciones) {
      print('_lista');
      print(opciones);
    });*/
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot){
        // print('_builder');
        // print(snapshot.data);
        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      },
    );
    /*
    return ListView(
      children: _listaItems(),
    );*/



  }

  List<Widget> _listaItems(List<dynamic> data , BuildContext context) {
    // return [
    //   ListTile(title: Text('Hola Mundo'),),
    //   ListTile(title: Text('Hola Mundo'),),
    //   ListTile(title: Text('Hola Mundo'),),
    // ];
    final List<Widget> opciones = [];
      // print('_DATA');
      // print(data);
 
    data.forEach((opt) {
      print(opt);
      final widgetTemp = ListTile(
        title : Text(opt['texto']),
        leading:getIcon(opt['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color:Colors.blue),
        onTap: (){
          // final route = MaterialPageRoute(
          //   builder: (context) => AlertPage()
          // );
          // Navigator.push(context, route);
          Navigator.pushNamed(context, opt['ruta']);
        },
      );

      opciones..add(widgetTemp)
              ..add(Divider());
    });
    return opciones;
  }
}