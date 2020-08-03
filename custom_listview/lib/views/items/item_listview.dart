
import 'package:custom_listview/custom_widget/text_style.dart';
import 'package:custom_listview/models/product.dart';
import 'package:custom_listview/utils/uitls.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemListView extends StatefulWidget {
   Product product;
   Function onTap;
  ItemListView(this.product,this.onTap);
  @override
  _ItemListViewState createState() => _ItemListViewState();
}

class _ItemListViewState extends State<ItemListView> {
  Product products;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
      child: InkWell(
        onTap: widget.onTap,
        child:  Container(
          height: 100,
          child: Stack(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Image.network(widget.product.image,width: 90,height: 100,),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(widget.product.name,style: textStyleBlackMediumBold(),),
                            SizedBox(height: 10,),
                            TextMoneyFromString(widget.product.price),
                            SizedBox(height: 4,),
                          ],
                        ),
                      ),

                    ],
                  ),
                ],

              ),
              Container(
                alignment: Alignment.bottomRight,
                padding: EdgeInsets.fromLTRB(10.0, 0.0, 5.0, 10.0),
                   child: (Text('Update: ${widget.product.create_at}')),
              )
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