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
    {'name': 'SamSung', 'group': 'Team A','image': 'https://sudospaces.com/mobilecity-vn/images/2019/01/iphone-6s-pink.jpg','create_at': '1/5/2020'},
    {'name': 'Iphone 3', 'group': 'Team A','image': 'https://cdn.tgdd.vn/Products/Images/42/114110/iphone-8-plus-hh-600x600-600x600.jpg','create_at': '1/5/2020'},
    {'name': 'Oppo', 'group': 'Team A','image': 'https://cdn.tgdd.vn/Products/Images/42/111107/samsung-galaxy-a7-2018-blue-600x600.jpg','create_at': '2/5/2020'},
    {'name': 'SamSung', 'group': 'Team A','image': 'https://cdn1.viettelstore.vn/images/Product/ProductImage/medium/1861322683.jpeg','create_at': '2/5/2020'},
    {'name': 'SamSung', 'group': 'Team A','image': 'https://sudospaces.com/mobilecity-vn/images/2019/01/iphone-6s-pink.jpg','create_at': '7/7/2020'},
    {'name': 'SamSung', 'group': 'Team A','image': 'https://sudospaces.com/mobilecity-vn/images/2019/01/iphone-6s-pink.jpg','create_at': '9/5/2020'},

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
    List notifications = [];
    print('data1 '+data1.toString());
    print('---------------------------------------');
    print('---------------------------------------');
    print('---------------------------------------');
    List data2 =data.toList();
    notifications.addAll(data);
    print('data2 '+data2.toString());
    return GroupedListView<dynamic, String>(
      groupBy: (element) => element[['create_at']],
      elements: data,
     // order: GroupedListOrder.DESC,
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
       return Text(item['name']);
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
