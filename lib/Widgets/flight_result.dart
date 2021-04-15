import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spacex_latest_launch/constants.dart';


// This widget works for  showing is FlightResult Success or Fail

class FlightResult extends StatelessWidget{
  final bool result;

  FlightResult({@required this.result});

  @override
  Widget build(BuildContext context) {
    if (result){
      return Center(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Success",style: Constants.success,),
          ),
          decoration: BoxDecoration(
              border: Border.all(width: 2),
              borderRadius: BorderRadius.circular(10)
          ),
        ),
      );
    }
    else{

      return Center(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Failed",style: Constants.fail,),
          ),
          decoration: BoxDecoration(
              border: Border.all(width: 2),
              borderRadius: BorderRadius.circular(10)
          ),
        ),
      );

    }
  }


}