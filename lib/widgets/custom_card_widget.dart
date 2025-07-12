import 'dart:math';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/config/constants.dart';
import 'package:portfolio/config/dark_light_theme.dart';
import 'package:portfolio/config/firebase_analytics.dart';
import 'package:portfolio/model/tiles_model.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomCardWidget extends StatelessWidget {
  final TilesData _project;
  final double _bottomPadding;
  Random random = new Random();

  CustomCardWidget(this._project, this._bottomPadding);

  @override
  Widget build(BuildContext context) {
    void showSnackbar() {
      Scaffold.of(context).removeCurrentSnackBar();
      String msg = snackbarMessages[random.nextInt(9)];
      final snackBar = SnackBar(
          content: Text(msg),
          action: SnackBarAction(
            label: 'Dismiss',
            textColor: ToggleThemer.of(context).isDarkModeOn
                ? kAccentColor
                : Colors.greenAccent[100],
            onPressed: () {
              //  Navigator.of(context).pop();
            },
          ));
      Scaffold.of(context).showSnackBar(snackBar);
    }

    openLink(String link) async {
      // Android and iOS
      if (await canLaunch(link)) {
        await launch(link);
      } else {
        showSnackbar();
        print('Could not launch $link');
      }
    }

    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Card(
      elevation: 5,
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, _bottomPadding),
      child: InkWell(
        onTap: () {
          analytics.logEvent(
              name: 'card_clicked', parameters: {'card_name': _project.name});
          showSnackbar();
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IntrinsicHeight(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 40,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Center(
                      child: Image.asset(
                        ToggleThemer.of(context).isDarkModeOn
                            ? _project.imageLight
                            : _project.image,
                        //width: width * .25,
                        //              height: height * .15,
                        alignment: AlignmentDirectional.center,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(),
                ),
                Expanded(
                  flex: 60,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: SingleChildScrollView(
                      child: IntrinsicHeight(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Text(
                                _project.name,
                                //style: kCaptionStyle,
                                style: Theme.of(context).textTheme.headline6,
                                textAlign: TextAlign.center,
                              ),
                            ),
                            SizedBox(height: height * .005),
                            // Add year here
                            Center(
                              child: Text(
                                _project
                                    .year, // Make sure TilesData has a year field
                                style: Theme.of(context)
                                    .textTheme
                                    .caption
                                    ?.copyWith(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            SizedBox(
                              height: height * .01,
                            ),
                            Flexible(
                              child: Text(
                                _project.description,
                                textScaleFactor: 1.2,
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.caption,
                              ),
                            ),
                            if (_project.link != null)
                              Column(
                                children: [
                                  SizedBox(
                                    height: height * .01,
                                  ),
                                  Flex(
                                      direction: Axis.horizontal,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Flexible(
                                            child: InkWell(
                                                onTap: () {
                                                  openLink(_project.link);
                                                },
                                                child: Text("More Details",
                                                    textScaleFactor: 1.2,
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .caption
                                                        .copyWith(
                                                            decoration:
                                                                TextDecoration
                                                                    .underline,
                                                            color:
                                                                kAccentColorLight))))
                                      ]),
                                ],
                              ),
                            if (_project.smallIcons != null)
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  for (var smallIcon in _project.smallIcons)
                                    Tooltip(
                                      child:
                                          ToggleThemer.of(context).isDarkModeOn
                                              ? smallIcon.icon
                                              : smallIcon.icon,
                                      message: smallIcon.tooltip,
                                    ),
                                ],
                              )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
