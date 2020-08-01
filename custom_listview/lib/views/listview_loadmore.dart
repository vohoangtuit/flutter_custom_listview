import 'package:custom_listview/custom_widget/appbar.dart';
import 'package:flutter/material.dart';

class ListViewLoadMore extends StatefulWidget {
  @override
  _ListViewLoadMoreState createState() => _ListViewLoadMoreState();
}

class _ListViewLoadMoreState extends State<ListViewLoadMore> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarMain(context,'ListView Load More'),
    );
  }
}
