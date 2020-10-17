import 'package:flutter/material.dart';

AppBar header(context, {bool isAppTitle = false, String titleText}) {
  return AppBar(
    centerTitle: true,
    backgroundColor: Theme.of(context).accentColor,
    title: Text(
      isAppTitle ? "FlutterShare" : titleText,
      style: TextStyle(
          color: Colors.white,
          fontFamily: isAppTitle ? "Signatra" : "",
          fontSize: isAppTitle ? 50 : 22),
    ),
  );
}
