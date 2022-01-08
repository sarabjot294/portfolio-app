import 'package:flutter/material.dart';

class TilesData {
  String image;
  String imageLight;
  String name;
  String description;
  String link;
  List<SmallIcons> smallIcons;
  TilesData(
      {@required this.image,
      this.imageLight,
      @required this.name,
      @required this.description,
      this.link,
      this.smallIcons});
}

class SmallIcons {
  Icon icon;
  String tooltip;
  SmallIcons({@required this.icon, @required this.tooltip});
}
