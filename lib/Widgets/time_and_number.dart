import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spacex_latest_launch/constants.dart';


// This widget works for  Flight Number and Local Flight Time

class TimeAndNumber extends StatelessWidget {
  final String time;
  final String number;


  TimeAndNumber({@required this.time, @required this.number});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(children: [
          Icon(Icons.format_list_numbered),
          SizedBox(width: 10,),
          Text("Flight No : ",style: Constants.dateAndNum,),
          Text("$number",style: Constants.dateAndNum.copyWith(fontSize: 22,color: Colors.black),),
        ],),
  SizedBox(height: 20,),
      Row(children: [
        Icon(Icons.alarm),
        SizedBox(width: 10,),
        Text(time,style: Constants.dateAndNum,),
      ],)
    ],);
  }

}