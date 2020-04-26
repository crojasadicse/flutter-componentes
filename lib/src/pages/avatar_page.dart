import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://img.vixdata.io/pd/jpg-large/es/sites/default/files/r/rip-stan-lee.jpg'),
              radius: 25.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              right: 10.0
            ),
            child: CircleAvatar(

              child: Text('SL'),
              backgroundColor: Colors.purple,
              

            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          placeholder: AssetImage('assets/original.gif'), 
          image: NetworkImage('https://img.vixdata.io/pd/jpg-large/es/sites/default/files/r/rip-stan-lee.jpg')),
      ),
    );
  }
}