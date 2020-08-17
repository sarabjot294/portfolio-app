import 'package:flutter/material.dart';

class ToggleThemer extends InheritedWidget {
  final _ToggleThemeWidgetState
      data; // We'll use ToggleTheme to get access to the current state of ToggleThemeWidget

  const ToggleThemer({
    Key key,
    @required this.data,
    @required Widget child,
  })  : assert(child != null),
        super(key: key, child: child);

  static _ToggleThemeWidgetState of(BuildContext context) {
    //This method returns the current state of the ToggleThemeWidget. This will be used down the tree
    return (context.inheritFromWidgetOfExactType(ToggleThemer) as ToggleThemer)
        .data;
  }

  @override
  bool updateShouldNotify(ToggleThemer old) {
    return this != old;
  }
}

class ToggleThemeWidget extends StatefulWidget {
  final bool initialDarkModeOn; // this is the initial state of the variable
  final Widget
      child; // child to which this boolean variable should be propagated upon change. This will be our app in this case

  ToggleThemeWidget({Key key, this.initialDarkModeOn, this.child})
      : assert(initialDarkModeOn != null),
        assert(child != null),
        super(key: key);

  @override
  _ToggleThemeWidgetState createState() => _ToggleThemeWidgetState();
}

class _ToggleThemeWidgetState extends State<ToggleThemeWidget> {
  bool isDarkModeOn;

  void switchDarkMode() {
    //method used to toggle dark mode during the runtime of the app
    setState(() {
      isDarkModeOn = !isDarkModeOn;
    });
  }

  @override
  Widget build(BuildContext context) {
    isDarkModeOn = isDarkModeOn ??
        widget
            .initialDarkModeOn; // this is the build method which would build the widget tree with the above info
    return ToggleThemer(
      data: this,
      child: widget.child,
    );
  }
}
