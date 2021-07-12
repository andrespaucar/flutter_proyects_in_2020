import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _valorSlider = 100.0;
  bool _bloquearCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top:50.0),
        child: Column( 
          children: <Widget>[
            _crearSlider(),
            _crearSwitch(),
            _checkBox(),
            Expanded(child: _crearImagen()),
          ],
        ),
      ),
    );
  }
  Widget _crearSlider(){
    return Slider(
      activeColor: Colors.indigoAccent,
      label: "Tamaño de la images",
      // divisions: 20,
      value: _valorSlider,
      min: 10.0,
      max: 400.0,
      onChanged: (_bloquearCheck) ? null : (valor){
        print(valor);
        setState(() {
          _valorSlider = valor;
        });
      },
    );
  }  

  Widget _crearImagen(){
    return Image(
      image: NetworkImage('https://i.pinimg.com/236x/93/cf/7c/93cf7cdb7dd8eada24db5d038c47486b.jpg'),
      width: _valorSlider,
      fit:BoxFit.contain,
    );
  }

  Widget _checkBox(){
  //   return Checkbox(
  //     value: _bloquearCheck,
  //     onChanged: (valor){
  //       setState(() {
  //         _bloquearCheck = valor;
  //       });
  //     },
  //   );
  // }
  return CheckboxListTile(
    title: Text('Bloquear slider'),
    value: _bloquearCheck,
      onChanged: (valor){
        setState(() {
          _bloquearCheck = valor;
        });
      },
  );

  }

  Widget _crearSwitch(){
    return SwitchListTile(
      title: Text('Bloquear slider'),
      value: _bloquearCheck,
        onChanged: (valor){
          setState(() {
            _bloquearCheck = valor;
          });
        },
    );
  }
}