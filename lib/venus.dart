import 'package:flutter/material.dart';

class Venus extends StatelessWidget {
  const Venus({Key key}) : super(key: key);

  Widget _portraitMode() {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Portrait Mode ",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            new Image.asset(
              'assets/images/venus.jpg',
              height: 200,
              width: 200,
            ),
          ],
        ),
      ],
    );
  }

  Widget _landscapeMode() {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Landscape Mode ",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 50,
            ),
            new Image.asset(
              'assets/images/venus.jpg',
              height: 100.0,
              fit: BoxFit.cover,
            )
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return _portraitMode();
          } else {
            return _landscapeMode();
          }
        },
      ),
    );
  }
}
