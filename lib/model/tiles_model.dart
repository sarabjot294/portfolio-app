import 'package:flutter/material.dart';

class TilesData {
  String image;
  String imageLight;
  String name;
  String description;
  String link;
  TilesData(
      {@required this.image,
      this.imageLight,
      @required this.name,
      @required this.description,
      this.link});
}
