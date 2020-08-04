import 'package:custom_listview/custom_widget/appbar.dart';
import 'package:custom_listview/models/product.dart';
import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';

import 'detail.dart';
import 'items/item_listview.dart';

class ListViewStickyHeader extends StatefulWidget {
  @override
  _ListViewStickyHeaderState createState() => _ListViewStickyHeaderState();
}

class _ListViewStickyHeaderState extends State<ListViewStickyHeader> {
  List<Product> data = new Product().initData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBarMain(context, 'ListView Sticky header'),
        body: initList(),
        );
  }
  ListView initList(){
   return ListView.builder(itemBuilder: (context, index) {
      return StickyHeader(
        header: Container(
          height: 50.0,
          color: Colors.blue,
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          alignment: Alignment.centerLeft,
          child: Text(
            'Header # ${data[index].create_at}',
            style: const TextStyle(color: Colors.white),
          ),
        ),
        content: Column(
//          children: List<int>.generate(data.length, (index) => index)
//              .map((item) =>
//              Container(
//                height: 50,
//                color: Colors.grey[(item + 1) * 100],
//              )
//
//          ).toList(),
            children: <Widget>[
            initListView()
            ],
        ),
      );
    }
    );
  }
  ListView initListView(){
    return ListView.separated(// or separated // builder
      separatorBuilder: (context, index) => Divider(
        color: Colors.grey,height: 1,
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
