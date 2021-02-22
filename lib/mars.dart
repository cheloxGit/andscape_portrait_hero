import 'package:flutter/material.dart';

class Mars extends StatelessWidget {
  const Mars({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mars'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Hero(
            transitionOnUserGestures: true,
            tag: 'mars',
            child: Transform.scale(
              scale: 1.0,
              child: Image.asset('assets/images/venus.jpg'),
            ),
          ),
          Card(
              elevation: 8,
              margin: EdgeInsets.all(16),
              child: Container(
                padding: EdgeInsets.all(16),
                child: Text('Mars probably contains life on it.'),
              )),
        ],
      )),
    );
  }
}
