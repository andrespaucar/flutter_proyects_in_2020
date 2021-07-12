import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  static final pageName = 'avatar';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://graffica.info/wp-content/uploads/2018/11/URnaMrya_400x400.jpg'),
              radius: 25.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.brown,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage( 
          image: NetworkImage('https://hipertextual.com/files/2019/04/hipertextual-avengers-endgame-contiene-ultimo-cameo-stan-lee-2019632812-scaled.jpg'),
          placeholder: AssetImage('assets/jard-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
      
    );
  }
}