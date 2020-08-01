import 'package:custom_listview/custom_widget/appbar.dart';
import 'package:flutter/material.dart';

class GridViewBase extends StatefulWidget {
  @override
  _GridViewBaseState createState() => _GridViewBaseState();
}

class _GridViewBaseState extends State<GridViewBase> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarMain(context,'GridView Base'),
    );
  }
}
