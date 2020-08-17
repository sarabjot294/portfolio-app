import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:portfolio/config/constants.dart';
import 'package:portfolio/config/dark_light_theme.dart';
import 'package:portfolio/config/firebase_analytics.dart';
import 'package:portfolio/helper_classes/fade_route.dart';

class ReusableHomePage extends StatelessWidget {
  //final FirebaseAnalyticsObserver observer = FirebaseAnalyticsObserver(analytics: analytics);
  final int selectedIndex;
  final String title;
  static bool isSnackBarActive = false;

  ReusableHomePage({this.selectedIndex, this.title});

  @override
  Widget build(BuildContext context) {
    analytics.setCurrentScreen(screenName: classNames.elementAt(selectedIndex));

    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: ToggleThemer.of(context).isDarkModeOn
                ? Icon(Icons.wb_sunny)
                : Icon(MaterialCommunityIcons.power_sleep),
            onPressed: () => ToggleThemer.of(context).switchDarkMode(),
          )
        ],
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(child: tabViews.elementAt(selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        items: kBottomList,
        currentIndex: selectedIndex,
        selectedItemColor: kAccentColor3,
        selectedIconTheme:
            Theme.of(context).iconTheme.copyWith(color: kAccentColor3),
        onTap: (value) {
          if (value != selectedIndex)
            Navigator.pushReplacement(
              context,
              FadeRoute(
                  page: ReusableHomePage(
                selectedIndex: value,
                title: classNames.elementAt(value),
              )),
            );
        },
      ),
    );
  }
}
