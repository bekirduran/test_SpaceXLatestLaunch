import 'package:flutter/material.dart';


// This widget shows Patch Image

class PatchImage extends StatelessWidget {
  final String patch;

  PatchImage({@required this.patch});

  @override
  Widget build(BuildContext context) {
     return FadeInImage.assetNetwork(placeholder:"assets/loading.gif" , image: patch);
  }

}