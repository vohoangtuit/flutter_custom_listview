
import 'dart:ffi';

import 'package:custom_listview/custom_widget/text_style.dart';
import 'package:custom_listview/models/product.dart';
import 'package:custom_listview/utils/uitls.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_money_formatter/flutter_money_formatter.dart';

class ItemHorizontal extends StatefulWidget {
  Product product;
  Function onTap;
  ItemHorizontal(this.product,this.onTap);
  @override
  _ItemHorizontalState createState() => _ItemHorizontalState();
}

class _ItemHorizontalState extends State<ItemHorizontal> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        padding: EdgeInsets.fromLTRB(0.0, 0.0, 1.0, 0.0),
        child: Container(
          color: Colors.lime,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(4.0, 0.0, 4.0, 0.0),
                child: InkWell(
                  onTap: widget.onTap,
                  child:  Container(
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 5,),
                        Image.network(widget.product.image,width: 90,height: 100,fit: BoxFit.fitWidth),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(widget.product.name,style: textStyleBlackMediumBold(),),
                              SizedBox(height: 10,),
                              TextMoneyFromString(widget.product.price),
                              SizedBox(height: 4,),
                              Text('Update: ${widget.product.create_at}')

                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
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
  }
}