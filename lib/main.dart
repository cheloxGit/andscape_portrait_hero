import 'package:flutter/material.dart';
import 'package:landscape_portrait_hero/constants.dart';
import 'package:landscape_portrait_hero/earth.dart';
import 'package:landscape_portrait_hero/jupyter.dart';
import 'package:landscape_portrait_hero/mars.dart';
import 'package:landscape_portrait_hero/mercury.dart';
import 'package:landscape_portrait_hero/saturn.dart';
import 'package:landscape_portrait_hero/venus.dart';

import 'dashboard.dart';

Future<void> main() async {
  // Routes();
  WidgetsFlutterBinding.ensureInitialized();
  // await sharedPrefs.init();
  runApp(
    MaterialApp(
      title: 'Awesome App',
      color: Colors.redAccent,
      routes: <String, WidgetBuilder>{
        DASHBOARD_UI: (BuildContext context) => Dashboard(),
        MERCURY_UI: (BuildContext context) => Mercury(),
        VENUS_UI: (BuildContext context) => Venus(),
        EARTH_UI: (BuildContext context) => Earth(),
        MARS_UI: (BuildContext context) => Mars(),
        JUPYTER_UI: (BuildContext context) => Jupyter(),
        SATURN_UI: (BuildContext context) => Saturn(),
      },
      home: Dashboard(),
    ),
  );
}
