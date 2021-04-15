import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spacex_latest_launch/constants.dart';

// This widget works for  FlightDetails
class FlightDetails extends StatelessWidget {
  final String details;


  FlightDetails({@required this.details});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Text(details,style: Constants.detailsContent,),
    );
  }

}