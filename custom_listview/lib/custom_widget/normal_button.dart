import 'package:custom_listview/custom_widget/text_style.dart';
import 'package:flutter/material.dart';

class NormalButton extends StatefulWidget {
  final String title;
  final  Function  onPress;

  NormalButton({this.title, this.onPress});

  @override
  _NormalButtonState createState() => _NormalButtonState();
}

class _NormalButtonState extends State<NormalButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        children: <Widget>[
          ButtonTheme(
            minWidth: 200,
            height: 45,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(8.0)),
              child: Text(widget.title, style: textStyleWhiteDefault(),),
              onPressed: widget.onPress,
            ),
          ),
        ],
      ),

    );
  }
}
