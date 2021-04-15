import 'package:flutter/material.dart';
import 'package:spacex_latest_launch/Model/spacex_latest.dart';
import 'package:spacex_latest_launch/Widgets/flight_details.dart';
import 'package:spacex_latest_launch/Widgets/flight_result.dart';
import 'package:spacex_latest_launch/Widgets/launch_name.dart';
import 'package:spacex_latest_launch/Widgets/patch_widget.dart';
import 'package:spacex_latest_launch/Widgets/time_and_number.dart';
import 'package:spacex_latest_launch/constants.dart';
import 'package:spacex_latest_launch/data_manager.dart';


//HomePage Screen
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SpaceX Latest Launch"),),
      body: FutureBuilder(future: DataManager.getLatestLaunch(),builder: (context, AsyncSnapshot<SpacexLatest> snapshot ){
        if (snapshot.connectionState == ConnectionState.waiting){
          return Center(child: CircularProgressIndicator(),);
        }
        else if (snapshot.connectionState == ConnectionState.done) {
          return ListView(
            children: [
              //SpaceX Latest Launch Name Widget
              Padding(padding: EdgeInsets.symmetric(vertical: 15),child: LaunchName(name: snapshot.data.name,),),
              Divider(),

              //SpaceX Latest LaunchTime Name LaunchNumber Widget
              Padding(padding: EdgeInsets.all(8),child:
              TimeAndNumber(time: snapshot.data.dateLocal.toString(),
                  number: snapshot.data.flightNumber.toString()),),
              Divider(),

              //SpaceX Latest Launch Patch Image Widget
              Padding(padding: EdgeInsets.all(8),child: PatchImage(patch: snapshot.data.links.patch.small),),
              Divider(),

              //SpaceX Latest Launch Flight Result Widget
              Padding(padding: EdgeInsets.all(8),child: FlightResult(result: snapshot.data.success),),
              Divider(),

              //SpaceX Latest Launch Detail Widget
              ExpansionTile(title: Text("Details",style: Constants.dateAndNum),children: [FlightDetails(details: snapshot.data.details,)],)
            ],
          );
        }
        else {
          return null;
        }
      }),
    );

  }
}
