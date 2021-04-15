
import 'package:flutter/material.dart';
import 'package:spacex_latest_launch/constants.dart';


// This widget shows Latest Launch Name

class LaunchName extends StatelessWidget {
  final String name;

  LaunchName({@required this.name});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.airplanemode_active),
          SizedBox(width: 10,),
          Text(name,style: Constants.biggerFont,),
        ],
      ),
    );
  }
}