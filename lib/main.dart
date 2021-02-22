import 'package:flutter/material.dart';
import 'package:sampleResponsive/constants.dart';
import 'package:sampleResponsive/dashboard.dart';
import 'package:sampleResponsive/earth.dart';
import 'package:sampleResponsive/jupyter.dart';
import 'package:sampleResponsive/mars.dart';
import 'package:sampleResponsive/mercury.dart';
import 'package:sampleResponsive/saturn.dart';
import 'package:sampleResponsive/venus.dart';

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
