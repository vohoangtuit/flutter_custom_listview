import 'package:custom_listview/custom_widget/appbar.dart';
import 'package:flutter/material.dart';

class ListViewHorizontal extends StatefulWidget {
  @override
  _ListViewHorizontalState createState() => _ListViewHorizontalState();
}

class _ListViewHorizontalState extends State<ListViewHorizontal> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarMain(context,'ListView Horizontal'),
    );
  }
}
