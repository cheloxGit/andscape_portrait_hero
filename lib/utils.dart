import 'package:flutter/material.dart';
import 'package:landscape_portrait_hero/constants.dart';

getAppBar(BuildContext context, String title) {
  return AppBar(
    // or just click top icon to go to dashborad
    leading: IconButton(
      icon: Icon(Icons.navigate_before, //to replace the default icon
          color: MAIN_COLOR),
      onPressed: () => Navigator.of(context).pop(),
    ),
    //automaticallyImplyLeading: false,
    backgroundColor: Colors.grey,
    title: Text(title),
    centerTitle: true,
  );
}
