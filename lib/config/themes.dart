import 'package:flutter/material.dart';

import 'constants.dart';

darkTheme(context) {
  return ThemeData(
    fontFamily: 'GoogleSansRegular',
    primarySwatch: Colors.blue,
    //primaryColor: Colors.black,
    primaryColor: Color(0xff18102F),
    accentColor: Colors.blue,
    disabledColor: Colors.white,
    cardColor: Color(0xff1f2124),
    canvasColor: Colors.black54,
    textSelectionColor: Colors.white,
    brightness: Brightness.dark,
    buttonTheme: Theme.of(context).buttonTheme.copyWith(
        colorScheme: ColorScheme.dark(),
        buttonColor: Colors.blue,
        splashColor: Colors.black),
    appBarTheme: AppBarTheme(elevation: 0.0, color: kPrimaryColor),
    snackBarTheme: Theme.of(context)
        .snackBarTheme
        .copyWith(backgroundColor: Colors.white, actionTextColor: kAccentColor),
  );
}

lightTheme(context) {
  return ThemeData(
    fontFamily: 'GoogleSansRegular',
    primarySwatch: Colors.blue,
    primaryColor: Colors.white,
    accentColor: Colors.blue,
    disabledColor: Colors.grey,
    //cardColor: Colors.white70,
    cardColor: Colors.white70,
    canvasColor: Colors.white,
    brightness: Brightness.light,
    textSelectionColor: Colors.black,
    buttonTheme: Theme.of(context).buttonTheme.copyWith(
        colorScheme: ColorScheme.light(),
        buttonColor: Colors.blue,
        splashColor: Colors.white),
    appBarTheme: AppBarTheme(
      elevation: 0.0,
      color: Colors.white,
      iconTheme: IconThemeData(color: Colors.black),
    ),
    snackBarTheme: Theme.of(context)
        .snackBarTheme
        .copyWith(backgroundColor: kAccentColorLight),
  );
}
