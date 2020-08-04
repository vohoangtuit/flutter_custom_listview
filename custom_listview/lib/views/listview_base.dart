import 'package:custom_listview/custom_widget/appbar.dart';
import 'package:custom_listview/models/product.dart';
import 'package:custom_listview/views/detail.dart';
import 'package:flutter/material.dart';

import 'items/item_listview.dart';

  class ListViewBase extends StatefulWidget {
  @override
  _ListViewBaseState createState() => _ListViewBaseState();
}

class _ListViewBaseState extends State<ListViewBase> {
  List<Product> data = new Product().initData();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarMain(context,'ListView Base'),
      body: Container(
        child: initListView(),
      ),
    );
  }

  ListView initListView(){
    return ListView.separated(// or separated // builder
      separatorBuilder: (context, index) => Divider(
        color: Colors.grey,height: 1,
        indent: 10.0,// padding left
        endIndent: 20,// padding right
      ),
      itemCount: data.length,
      itemBuilder: (context,index){
        return ItemListView(data[index],(){
          print("on tap");
          Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailScreen(data[index])));
        });
      },
    );
  }

}

