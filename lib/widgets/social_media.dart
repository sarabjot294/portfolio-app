import 'package:flutter/material.dart';
import 'package:portfolio/config/dark_light_theme.dart';

class SocialMedia extends StatelessWidget {
  final String image;
  final String socialMediaName;
  String uri;
  final Function onTap;

  SocialMedia(
      {@required this.image, @required this.socialMediaName, this.onTap});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onTap,
      //height: 50.0,
      child: Row(
        children: [
          Image.asset(
            image,
            width: 25.0,
            height: 25.0,
          ),
          SizedBox(
            width: 5.0,
          ),
          Text(
            socialMediaName,
            style: Theme.of(context).textTheme.caption.copyWith(
                color: ToggleThemer.of(context).isDarkModeOn
                    ? Colors.white
                    : Colors.black),
          ),
        ],
      ),
    );
  }
}
