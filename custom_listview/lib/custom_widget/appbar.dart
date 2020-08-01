import 'package:custom_listview/custom_widget/text_style.dart';
import 'package:flutter/material.dart';

Widget materialApp(BuildContext context, String title) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: title,
  );
}
Widget appBarMain(BuildContext context,String title) {
  return AppBar(
    title: Text(title, style: textStyleHeader()),
    centerTitle: true,
  );
}