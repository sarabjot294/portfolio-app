import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:portfolio/screens/awards.dart';
import 'package:portfolio/screens/profile.dart';
import 'package:portfolio/screens/project_view.dart';

const Color kPrimaryColor = Color(0xff18102F);
const Color kAccentColor = Color(0xff8B10AD);
const Color kAccentColorLight = Color(0xffB57EDC);
const Color kAccentColor2 = Colors.black54;
const Color kSecondaryColor = Color(0xff511294);
const Color kAccentColor3 = Color(0xffC853FE);
/*
const TextStyle kHeadingStyle =
    TextStyle(color: Colors.white, fontSize: 30.0, fontFamily: 'Nanum Gothic');

const TextStyle kCaptionStyle =
    TextStyle(color: Colors.white, fontSize: 20.0, fontFamily: 'Nanum Gothic');
*/
List<Widget> tabViews = <Widget>[AwardsScreen(), ProfileView(), ProjectView()];

List<String> classNames = [
  'Awards',
  'Profile',
  'Projects',
];

List<String> snackbarMessages = [
  '"The things you own end up owning you."',
  '"With great power, comes great responsibility."',
  '"I\'ll make him an offer he can\'t refuse."',
  '"May the force be with you."',
  '“How you doin’?”',
  '"Do, or do not. There is no “try”"',
  '"Carpe diem. Seize the day, boys. Make your lives extraordinary."',
  '"And I.. Am.. Iron Man. *snap*"',
  '"Happiness can be found even in the darkest of times, if one only remembers to turn on the light."',
];

const List<BottomNavigationBarItem> kBottomList =
    const <BottomNavigationBarItem>[
  BottomNavigationBarItem(
    icon: Icon(Entypo.trophy),
    label: 'Awards',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.account_circle),
    label: 'About',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.work),
    label: 'Projects',
  )
];

const String kResumeURL =
    "https://github.com/sarabjot294/important_files/blob/cf35ad8a5ca1680ec724c791bdcf625e2bd0468e/SARABJOT_SINGH_RESUME.pdf";
