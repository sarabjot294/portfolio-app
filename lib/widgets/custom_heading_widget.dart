import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomHeadingWidget extends StatelessWidget {
  final String heading;
  CustomHeadingWidget({this.heading});

  @override
  Widget build(BuildContext context) {
    bool phoneUI = false;

    print('Height : ');
    print(MediaQuery.of(context).size.height);
    print('\nWidth : ');
    print(MediaQuery.of(context).size.width);
    if (MediaQuery.of(context).size.width < 500) phoneUI = true;

    List<Widget> iconAndHeading = [
      Container(
        child: Hero(
          tag: 'profile_picture',
          child: CircleAvatar(
            radius: phoneUI ? 50.0 : 80.0,
            backgroundImage: AssetImage('assests/images/sarabjot.JPG'),
          ),
        ),
      ),
      Flexible(
        child: Text(
          heading,
          textScaleFactor: 1.5,
          style: Theme.of(context).textTheme.headline6,
          textAlign: TextAlign.center,
          overflow: TextOverflow.clip,
          maxLines: 3,
        ),
      )
    ];

    if (heading != 'Projects') {
      iconAndHeading.insert(
          0,
          SizedBox(
            width: 32.0,
          ));
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //crossAxisAlignment: CrossAxisAlignment.center,
      children: heading == 'Projects'
          ? iconAndHeading.reversed.toList()
          : iconAndHeading,
    );
  }
}
