import 'dart:async';

import 'package:custom_listview/custom_widget/appbar.dart';
import 'package:custom_listview/custom_widget/loadmore_bottom.dart';
import 'package:custom_listview/models/product.dart';
import 'package:flutter/material.dart';

import 'detail.dart';
import 'items/item_listview.dart';

class ListViewLoadMore extends StatefulWidget {
  @override
  _ListViewLoadMoreState createState() => _ListViewLoadMoreState();
}

class _ListViewLoadMoreState extends State<ListViewLoadMore> {
  List<Product> data = List<Product>();
  ScrollController controller;
  bool isLoading = false;
  int page =0;
  GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarMain(context,'ListView Load More'),
      body: Stack(
        children: <Widget>[
          initListView(),
          loader(isLoading),
        ],

      ),
    );
  }
  ListView initListView(){
    return ListView.separated(// or separated // builder
      separatorBuilder: (context, index) => Divider(
        color: Colors.red,
        height: 1,
        indent: 10.0,// padding left
        endIndent: 20,// padding right
      ),
     controller: controller,
      itemCount: data.length,
      itemBuilder: (context,index){
        return ItemListView(data[index],(){
          print("on tap");
          Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailScreen(data[index])));
        });
      },
    );
  }
  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }
  @override
  void initState() {
    super.initState();
    data = new Product().initData();
    controller = new ScrollController()..addListener(_scrollListener);
  }
  void _scrollListener() {
    if (controller.position.pixels == controller.position.maxScrollExtent) {
      if(page>=3)
        return;
      page+=1;
      startLoader();
    }
  }
  void startLoader() {
    setState(() {
      isLoading = !isLoading;
      fetchData();
    });
  }
  fetchData() async {
    var _duration = new Duration(seconds: 2);
    return new Timer(_duration, onResponse);
  }
  void onResponse(){
    print("page = $page");
    setState(() {
      data.addAll(new Product().initData());
      isLoading = !isLoading;
    });
  }

}
