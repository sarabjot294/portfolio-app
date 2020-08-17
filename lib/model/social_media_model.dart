import 'package:flutter/cupertino.dart';

class SocialMediaDetail {
  String images;
  String name;
  String link;
  Function onTap;

  SocialMediaDetail(
      {@required this.images, @required this.name, this.link, this.onTap});
}
