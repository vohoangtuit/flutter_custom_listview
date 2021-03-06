import 'package:custom_listview/custom_widget/appbar.dart';
import 'package:custom_listview/models/product.dart';
import 'package:flutter/material.dart';

import 'detail.dart';
import 'items/item_gridview.dart';
import 'items/item_listview.dart';
import 'items/item_listview_horizontal.dart';

class GridViewBase extends StatefulWidget {
  @override
  _GridViewBaseState createState() => _GridViewBaseState();
}

class _GridViewBaseState extends State<GridViewBase> {
  List<Product> data = new Product().initData();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarMain(context,'GridView Base'),
      body: Container(
       // padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
        child: initGridView(),
      ),
    );
  }
  GridView initGridView(){
    return GridView.count(
      crossAxisCount: 2,
      children: List.generate(data.length, (index) {
        return ItemGridView(data[index],(){
          print("on tap");
          Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailScreen(data[index])));
        });

      }),
    );

  }
}
