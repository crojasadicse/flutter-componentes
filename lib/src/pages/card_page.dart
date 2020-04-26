import 'package:flutter/material.dart';

class CardPage extends StatefulWidget {
  CardPage({Key key}) : super(key: key);

  @override
  _CardPageState createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text('Cards')
      ),

      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
        ],
      ),
    );
  }

  _cardTipo1() {

    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)) ,
      child: Column(
        children: <Widget>[
          ListTile(
            title : Text('Soy el titulo de esta tarjeta'),
            subtitle: Text('Aqui estamos con la descripcion de la tarjeta que quiero que vean para tener una idea de lo que quiero mostrarles'),
            leading: Icon( Icons.photo_album, color:Colors.blue ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                onPressed: null, 
                child: Text('Cancelar'))
            ],
          )
        ],
      ),
    );

  }

  _cardTipo2() {

    final card = Container(
      //clipBehavior: Clip.antiAlias,

      child: Column(
        children: <Widget>[

          FadeInImage(
            placeholder: AssetImage('assets/original.gif'), 
            fadeInDuration: Duration( milliseconds: 200 ),
            image: NetworkImage('https://www.tom-archer.com/wp-content/uploads/2017/03/landscape-photography-tom-archer-2.jpg'),
            height: 300.0,
            fit: BoxFit.cover,
          ),

          // Image(
          //   image: NetworkImage('https://www.tom-archer.com/wp-content/uploads/2017/03/landscape-photography-tom-archer-2.jpg')
          // ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('No tengo idea que poner')
          )
        ],
      ),
    );

    return Container (

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color : Colors.white,
        boxShadow: <BoxShadow> [
          BoxShadow(
            color : Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, 10.0)
          )
        ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child : card,
      ) ,
    );

  }



}