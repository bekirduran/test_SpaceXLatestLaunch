import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:spacex_latest_launch/Model/spacex_latest.dart';
import 'constants.dart';


class DataManager {

  //Fetching SpaceX Latest Launch Data
  static Future <SpacexLatest> getLatestLaunch() async{
    var url = Constants.latestLaunchUrl;
    var response = await http.get(url);
    var data = jsonDecode(response.body);
    return SpacexLatest.fromJson(data);
  }

}


