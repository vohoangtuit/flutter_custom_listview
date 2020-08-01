import 'package:custom_listview/custom_widget/appbar.dart';
import 'package:flutter/material.dart';

  class ListViewBase extends StatefulWidget {
  @override
  _ListViewBaseState createState() => _ListViewBaseState();
}

class _ListViewBaseState extends State<ListViewBase> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarMain(context,'ListView Base'),
    );
  }
}
