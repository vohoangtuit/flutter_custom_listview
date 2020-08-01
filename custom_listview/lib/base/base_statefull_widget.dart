import 'package:flutter/material.dart';

abstract class BaseStatefulWidget extends StatefulWidget {

  @override
  _BaseStatefulWidgetState createState() => _BaseStatefulWidgetState();
  onClick();
}

  class _BaseStatefulWidgetState extends State<BaseStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
  //onClick();
}
