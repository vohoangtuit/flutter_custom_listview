import 'package:custom_listview/custom_widget/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_money_formatter/flutter_money_formatter.dart';

// ignore: non_constant_identifier_names
Text TextMoneyFromString(String amount){
  return Text('${FlutterMoneyFormatter(settings: MoneyFormatterSettings(
    symbol: 'VNĐ',
    fractionDigits: 0,),amount: double.tryParse(amount)).output.symbolOnRight}',style: textStyleRedBoldMedium());
}
