import 'package:flutter/material.dart';

Widget loader(bool isLoading) {
  return isLoading
      ? new Align(
    child: new Container(
      width: 70.0,
      height: 70.0,
      child: new Padding(
          padding: const EdgeInsets.all(5.0),
          child: new Center(child: new CircularProgressIndicator())),
    ),
    alignment: FractionalOffset.bottomCenter,
  )
      : new SizedBox(
    width: 0.0,
    height: 0.0,
  );
}