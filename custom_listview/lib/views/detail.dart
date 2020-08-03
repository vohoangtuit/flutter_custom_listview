import 'package:custom_listview/custom_widget/appbar.dart';
import 'package:custom_listview/custom_widget/text_style.dart';
import 'package:custom_listview/models/product.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  Product product;
  DetailScreen(this.product);
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarMain(context,'Detail'),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.network(widget.product.image,width: 200,height: 200,),
              SizedBox(height: 20,),
              Text('Name: ${widget.product.name}',style: textStyleRedMedium(),),
              SizedBox(height: 20,),
              Text('Price: ${widget.product.price}',style: textStyleRedMedium(),),
              SizedBox(height: 20,),
              Text('Created: ${widget.product.create_at}',style: textStyleRedMedium(),),
            ],
          ),
        ),

      ),
    );
  }
}
