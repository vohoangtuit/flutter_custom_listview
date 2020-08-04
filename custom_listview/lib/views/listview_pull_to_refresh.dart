import 'dart:async';

import 'package:custom_listview/custom_widget/appbar.dart';
import 'package:custom_listview/custom_widget/loadmore_bottom.dart';
import 'package:custom_listview/models/product.dart';
import 'package:flutter/material.dart';

import 'detail.dart';
import 'items/item_listview.dart';

class ListViewPullToReFresh extends StatefulWidget {
  @override
  _ListViewPullToReFreshState createState() => _ListViewPullToReFreshState();
}

class _ListViewPullToReFreshState extends State<ListViewPullToReFresh> {
  List<Product> data = List<Product>();
  bool isLoading = false;
  int page = 0;
  GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();
  GlobalKey<RefreshIndicatorState> refreshKey;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarMain(context, 'ListView Pull to refresh'),
      body: RefreshIndicator(
        key: refreshKey,
        onRefresh: () async {
          await refreshList();
        },
        child: initListView(),
      ),

    );
  }

  ListView initListView() {
    return ListView.separated(
      // or separated // builder
      separatorBuilder: (context, index) => Divider(
        color: Colors.red,
        height: 1,
        indent: 10.0, // padding left
        endIndent: 20, // padding right
      ),
     // controller: controller,
      itemCount: data.length,
      itemBuilder: (context, index) {
        return ItemListView(data[index], () {
          print("on tap");
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailScreen(data[index])));
        });
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    data = new Product().initData();
    refreshKey = GlobalKey<RefreshIndicatorState>();

  }
  Future<Null> refreshList() async {
    await Future.delayed(Duration(seconds:3));
    if(page==3)
      return;
    page+=1;
    onResponse();
    return null;
  }


  fetchData() async {
    var _duration = new Duration(seconds: 2);
    return new Timer(_duration, onResponse);
  }

  void onResponse() {
    print("page = $page");
    var oldData =data;
    var newData =new Product().initData();
    setState(() {
      //data.addAll(new Product().initData());
      data =new List.from(newData)..addAll(oldData);// todo: add data to top

    });
  }
}
