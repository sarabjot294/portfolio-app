import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/config/constants.dart';
import 'package:portfolio/logics/social_media-logics.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileView extends StatelessWidget {
  openResume() async {
    await launch(kResumeURL);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Hero(
                tag: 'profile_picture',
                child: CircleAvatar(
                  radius: 100.0,
                  backgroundImage: AssetImage('assests/images/sarabjot.JPG'),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Sarabjot Singh',
                textScaleFactor: 3.5,
/*                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).textSelectionColor,
                    fontSize: 40.0,
                    fontFamily: 'Nanum Gothic'),*/
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                'Senior Software Engineer at Nordstrom',
                textScaleFactor: 1.4,
                style: Theme.of(context).textTheme.overline,
              ),
              SizedBox(
                height: 2.0,
              ),
              Text(
                'ex-amazon',
                textScaleFactor: 1.15,
                style: Theme.of(context).textTheme.overline,
              ),
              SizedBox(
                height: 2.0,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Icon(
                  Icons.school_rounded,
                  size: 25,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'University of Washington',
                  textScaleFactor: 1.4,
                  style: Theme.of(context).textTheme.overline,
                ),
              ]),
              SizedBox(
                height: 2.0,
              ),
              Center(
                child: Text(
                  'Ambitious, Adventurous, Ambivert\n Loves Outdoor.',
                  style: Theme.of(context).textTheme.caption,
                  textScaleFactor: 1.9,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 30.0,
                width: 60.0,
                child: Divider(
                  color: kAccentColor3,
                  thickness: 1.2,
                ),
              ),
              SizedBox(
                height: 12.0,
              ),
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 16.0,
                runSpacing: 12.0,
                children: [
                  _ProfileAction(
                    icon: Image.asset(
                      'assests/icons/linkedin.png',
                      width: 20.0,
                      height: 20.0,
                    ),
                    label: 'LinkedIn',
                    onPressed: openLinkedIn,
                  ),
                  _ProfileAction(
                    icon: Icon(Icons.download, size: 20.0),
                    label: 'Resume',
                    onPressed: openResume,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ProfileAction extends StatelessWidget {
  final Widget icon;
  final String label;
  final VoidCallback onPressed;

  const _ProfileAction({
    @required this.icon,
    @required this.label,
    @required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150.0,
      height: 44.0,
      child: OutlinedButton.icon(
        onPressed: onPressed,
        icon: icon,
        label: Text(label),
        style: OutlinedButton.styleFrom(
          primary: Theme.of(context).textTheme.bodyText1.color,
          side: BorderSide(color: kAccentColorLight),
          shape: StadiumBorder(),
        ),
      ),
    );
  }
}
