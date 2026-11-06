import 'package:flutter/material.dart';

class TilesData {
  String image;
  String imageLight;
  double imageSize;
  String name;
  String description;
  String link;
  String year;
  List<SmallIcons> smallIcons;
  TilesData(
      {@required this.image,
      this.imageLight,
      this.imageSize,
      @required this.name,
      @required this.description,
      this.link,
      this.smallIcons,
      this.year = ''});
}

class SmallIcons {
  Icon icon;
  String tooltip;
  SmallIcons({@required this.icon, @required this.tooltip});
}
