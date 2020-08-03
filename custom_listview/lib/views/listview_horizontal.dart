import 'package:custom_listview/custom_widget/appbar.dart';
import 'package:custom_listview/models/product.dart';
import 'package:flutter/material.dart';

import 'detail.dart';
import 'items/item_listview.dart';
import 'items/item_listview_horizontal.dart';

class ListViewHorizontal extends StatefulWidget {
  @override
  _ListViewHorizontalState createState() => _ListViewHorizontalState();
}

class _ListViewHorizontalState extends State<ListViewHorizontal> {
  List<Product> data = new Product().initData();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarMain(context,'ListView Horizontal'),
      body: Container(
        padding: EdgeInsets.fromLTRB(2.0, 0.0, 0.0, 0.0),
        child: Column(
          children: <Widget>[
            SizedBox(height: 10,),
            Container(
              height: 200,
              child: initListView(),
            ),
          ],
        ),
      ),
    );
  }
  ListView initListView(){
    return ListView.separated(// or separated // builder
      scrollDirection: Axis.horizontal,
      separatorBuilder: (context, index) => Divider(
        color: Colors.black,height: 9,
      ),
      itemCount: data.length,
      itemBuilder: (context,index){
        return ItemHorizontal(data[index],(){
          print("on tap");
          Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailScreen(data[index])));
        });
      },
    );
  }
}
