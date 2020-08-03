import 'package:custom_listview/custom_widget/normal_button.dart';
import 'package:custom_listview/models/product.dart';
import 'package:custom_listview/views/gridview_base.dart';
import 'package:custom_listview/views/gridview_spacing.dart';
import 'package:custom_listview/views/listview_base.dart';
import 'package:custom_listview/views/listview_group_by_header.dart';
import 'package:custom_listview/views/listview_horizontal.dart';
import 'package:custom_listview/views/listview_loadmore.dart';
import 'package:flutter/material.dart';

import 'custom_widget/appbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Custom ListView',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  ValueChanged data;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarMain(context,widget.title),
      body: Center(
        child: SingleChildScrollView (
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              NormalButton(title:'ListView Base',onPress: (){
                gotoScreen(context,ListViewBase());
              },),
              NormalButton(title:'ListView Load More',onPress: (){
                gotoScreen(context,ListViewLoadMore());
              },),
              NormalButton(title:'GridView Base',onPress: (){
                gotoScreen(context,GridViewBase());
              },),
              NormalButton(title:'GridView with spacing',onPress: (){
                gotoScreen(context,GridViewSpacing());
              },),
              NormalButton(title:'ListView with horizontal',onPress: (){
                gotoScreen(context,ListViewHorizontal());
              },),
              NormalButton(title:'ListView group by header',onPress: (){
                gotoScreen(context,ListViewGroupByHeader());
              },),
            ],
          ),
        ),
      ),

    );
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    List<Product> data = new Product().initData();print("data : ${data.length}");
  }

  gotoScreen(BuildContext context,StatefulWidget screen){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>screen));
  }
}
