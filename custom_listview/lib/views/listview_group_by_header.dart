import 'package:custom_listview/custom_widget/appbar.dart';
import 'package:flutter/material.dart';

class ListViewGroupByHeader extends StatefulWidget {
  @override
  _ListViewGroupByHeaderState createState() => _ListViewGroupByHeaderState();
}

class _ListViewGroupByHeaderState extends State<ListViewGroupByHeader> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarMain(context,'ListView Group by header'),
    );
  }
}
