import 'package:flutter/material.dart';
import 'package:portfolio/screens/reusable_home_page.dart';

import 'config/dark_light_theme.dart';
import 'config/firebase_analytics.dart';
import 'config/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ToggleThemeWidget(
      initialDarkModeOn: false,
      child: SarabjotProfile(),
    );
  }
}

class SarabjotProfile extends StatelessWidget {
  const SarabjotProfile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    analytics.logEvent(name: 'project', parameters: {'type': 'dev'});

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio - Sarabjot',
      theme: ToggleThemer.of(context).isDarkModeOn
          ? darkTheme(context)
          : lightTheme(context),
      home: ReusableHomePage(
        title: 'Profile',
        selectedIndex: 1,
      ),
    );
  }
}
