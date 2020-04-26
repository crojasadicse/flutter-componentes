import 'package:flutter/material.dart';


class SliderPage extends StatefulWidget {
  SliderPage({Key key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _valorSlider=100;
  bool _bloquearCheck=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text('Slider')
      ),
      body: Container(
        padding: EdgeInsets.only(top: 60.0),

        child: Column(
          children: <Widget>[
            _crearSlider(),
            _crearCheckBox(),
            _crearSwith(),
            Expanded(
              child: _crearImagen()
            )
          ],
        ),
      ),
    );
  }

  _crearSlider() {

    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen',
      //divisions: 20,
      value: _valorSlider,
      min: 10.0, 
      max : 400.0,
      onChanged:(_bloquearCheck)?null:
      
       (valor) {

        setState(() {
          _valorSlider = valor;
        });

      }
    );
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage('https://www.stickpng.com/assets/images/580b57fbd9996e24bc43c01d.png'),
      width: _valorSlider,
      fit : BoxFit.contain
    );
  }

  Widget _crearCheckBox() {

/*      return Checkbox(
      value: _bloquearCheck,
      onChanged: (valor){

          setState(() {
            _bloquearCheck = valor;
          });

      }
    ); */

    return CheckboxListTile(
      title: Text('Bloquear Slider'),
      value: _bloquearCheck, 
      onChanged: (valor){

        setState(() {
          _bloquearCheck=valor;
          
        });
      }
    );



  }

  _crearSwith() {

    return SwitchListTile(
      title: Text('Bloquear slider'),
      value: _bloquearCheck, 
      onChanged: (valor){
        setState(() {
          _bloquearCheck = valor;
          
        });
      }
    );

  }
}