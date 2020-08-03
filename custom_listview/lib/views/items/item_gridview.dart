import 'package:custom_listview/custom_widget/text_style.dart';
import 'package:custom_listview/models/product.dart';
import 'package:custom_listview/utils/uitls.dart';
import 'package:flutter/material.dart';

class ItemGridView extends StatefulWidget {
  Product product;
  Function onTap;
  ItemGridView(this.product,this.onTap);
  @override
  _ItemGridViewState createState() => _ItemGridViewState();
}

class _ItemGridViewState extends State<ItemGridView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        color: Colors.grey,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(4.0, 10.0, 4.0, 0.0),
              child: InkWell(
                onTap: widget.onTap,
                child: Column(
                  children: <Widget>[
                    Image.network(widget.product.image,width: 90,height: 100,fit: BoxFit.fitWidth),
                    Text(widget.product.name,style: textStyleBlackMediumBold(),),
                    SizedBox(height: 10,),
                    TextMoneyFromString(widget.product.price),
                    SizedBox(height: 4,),
                    Text('Update: ${widget.product.create_at}')
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
