import 'package:flutter/material.dart';


class InputPage extends StatefulWidget {
  InputPage({Key key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {


  String _nombre='';
  String _emial='';
  String _fecha = '';
  String _opcionSeleccionada='Volar';


  List _poderes = ['Volar','Rayox X','Super Aliento'];

  TextEditingController _inputFieldDateController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text('Inputs')
      ),
      body : ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 20.0),
        children: <Widget>[
          _crearInput(),
          Divider(),
          _crearEmail(),
          Divider(),
          _passwordField(),
          Divider(),
          _crearFecha(context),
          Divider(),
          _crearDropdown(context),
          Divider(),
          _crearPersona(),

        ],
      )

    );
  }

  _crearInput() {

    return TextField(
      autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        counter: Text('Letras  ${_nombre.length}'),
        hintText : 'Nombre de la persona',
        labelText: 'Nombre',
        helperText: 'Solo es el nombre',
        suffixIcon: Icon ( Icons.accessibility),
        icon: Icon( Icons.account_circle )
      ),
      onChanged: (valor) {

        setState(() {
        _nombre = valor;
          
        });

      },

    );

  }

  _crearPersona() {

    return ListTile(
      title: Text('nombes es : $_nombre'),
      subtitle: Text('Email : $_emial'),
      trailing: Text(_opcionSeleccionada),
    );

  }

  _crearEmail() {

    return TextField(
      keyboardType: TextInputType.emailAddress,      
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText : 'Email',
        labelText: 'Email',
        suffixIcon: Icon ( Icons.alternate_email),
        icon: Icon( Icons.email )
      ),
      onChanged: (valor) {

        setState(() {
        _emial = valor;
          
        });

      },

    );    

  }

  _passwordField() {

    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText : 'Password',
        labelText: 'Password',
        suffixIcon: Icon ( Icons.lock_open),
        icon: Icon( Icons.lock )
      ),
      onChanged: (valor) {

        setState(() {
        _emial = valor;
          
        });

      },

    );    

  }

  _crearFecha(BuildContext context) {


    return TextField(
      controller: _inputFieldDateController,
      enableInteractiveSelection: false,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText : 'Fecha nacimiento',
        labelText: 'Fecha nacimiento',
        suffixIcon: Icon ( Icons.perm_contact_calendar),
        icon: Icon( Icons.calendar_today )
      ),
      onTap: (){

        FocusScope.of(context).requestFocus(new FocusNode());

        _selectDate(context);

      },


    );  

  }

  void _selectDate(BuildContext context) async {

    DateTime picked = await showDatePicker(
      context: context,
      initialDate: new DateTime.now(),
      firstDate: new DateTime(2018),
      lastDate:  new DateTime(2025),
      locale: Locale('es','ES')
    
    );

    if(picked != null){
      setState(() {
        _fecha = picked.toString();
        _inputFieldDateController.text = _fecha;
      });
    }


  }

  
  List<DropdownMenuItem<String>> getOpcionesDropdown(){

    List<DropdownMenuItem<String>  > lista = new List();
    
    _poderes.forEach( (poder) {
      lista.add(  
        DropdownMenuItem(
          child: Text(poder),
          value: poder
        )  
      );
      } 


    );

    return lista;

  }
  
  _crearDropdown(BuildContext context) {

    return Row(
      children: <Widget>[

          Icon (Icons.select_all),
          SizedBox(
            width: 30.0,
          ),

          Expanded(
                  child: DropdownButton(
                  value: _opcionSeleccionada,
                  items: getOpcionesDropdown() , 
                  onChanged: (opt){

                    setState(() {
                      _opcionSeleccionada = opt;
                    });

                  }
            ),
          )

  

      ],
    );

    
  }


}