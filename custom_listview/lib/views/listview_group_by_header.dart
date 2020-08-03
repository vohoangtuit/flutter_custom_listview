import 'dart:convert';

import 'package:custom_listview/custom_widget/appbar.dart';
import 'package:custom_listview/models/product.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';

import 'detail.dart';
import 'items/item_listview.dart';

class ListViewGroupByHeader extends StatefulWidget {
  @override
  _ListViewGroupByHeaderState createState() => _ListViewGroupByHeaderState();
}

class _ListViewGroupByHeaderState extends State<ListViewGroupByHeader> {
  List<Product> data = new Product().initData();
  List data1 = [
    {'topic': 'ListView.builder', 'group': 'ListView Type'},
    {'topic': 'Introduction', 'group': 'ListView Type'},
    {'topic': 'StatefulWidget', 'group': 'Type of Widget'},
    {'topic': 'ListView', 'group': 'ListView Type'},
    {'topic': 'ListView.separated', 'group': 'ListView Type'},
    {'topic': 'ListView.custom', 'group': 'ListView Type'},
    {'topic': 'StatelessWidget', 'group': 'Type of Widget'},
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarMain(context,'ListView Group by header'),
      body: Container(
        child: list(),
      ),
    );
  }
  GroupedListView list(){
    String jsonTags = jsonEncode(data);
    print('data '+data.toString());
    List _elements =[jsonTags];
    print('---------------------------------------');
    print('---------------------------------------');
    print('---------------------------------------');
    print('data11 '+data1.toString());
    return GroupedListView<dynamic, String>(
      groupBy: (element) => element(Product)['create_at'],
      elements: data,
      order: GroupedListOrder.DESC,
      useStickyGroupSeparators: true,
      groupSeparatorBuilder: (String value) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          value,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      itemBuilder: (context,item){
       return Text('name');
      },

    );
  }
//  GroupedListView(
//  elements: _elements,
//  groupBy: (element) => element['group'],
//  groupSeparatorBuilder: _buildGroupSeparator,
//  itemBuilder: (context, element) => Text(element['name']),
//  order: GroupedListOrder.ASC,
//  ),
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
