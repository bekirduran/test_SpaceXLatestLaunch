import 'package:flutter/material.dart';

class Constants {
  // JSON API resource link
  static String latestLaunchUrl = "https://api.spacexdata.com/v4/launches/latest";

  // Text Style
  static final biggerFont = TextStyle(
  fontSize: 30,
  fontWeight: FontWeight.bold,
  fontFamily: "Noto Sans JP"
  );


  static final success = TextStyle(
  fontSize: 30,
  fontWeight: FontWeight.w600,
  fontFamily: "Noto Sans JP",
  color: Colors.green
  );

  static final fail = TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.w600,
      fontFamily: "Noto Sans JP",
      color: Colors.red
  );

  static final details = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w600,
  fontFamily: "Noto Sans JP",
  color: Colors.indigo.shade300
  );

  static final detailsContent = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      fontFamily: "Noto Sans JP",
      color: Colors.grey
  );

  static final dateAndNum = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w900,
  fontFamily: "Noto Sans JP",
  color: Colors.black54
  );

}