import 'package:custom_listview/custom_widget/appbar.dart';
import 'package:custom_listview/models/product.dart';
import 'package:custom_listview/views/items/item_gridview_spacing.dart';
import 'package:flutter/material.dart';

import 'detail.dart';
import 'items/item_gridview.dart';
import 'items/item_listview.dart';
import 'items/item_listview_horizontal.dart';

class GridViewSpacing extends StatefulWidget {
  @override
  _GridViewSpacingState createState() => _GridViewSpacingState();
}

class _GridViewSpacingState extends State<GridViewSpacing> {
  List<Product> data = new Product().initData();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarMain(context,'GridView Spacing'),
      body: Container(
        child: initGridView(),
      ),
    );
  }
  GridView initGridView(){
    return GridView.count(
      padding: const EdgeInsets.all(4.0),// spacing all
      crossAxisCount: 2,
      children: List.generate(data.length, (index) {
        return ItemGridViewSpacing(data[index],(){
          print("on tap");
          Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailScreen(data[index])));
        });

      }),
    );

  }
}
