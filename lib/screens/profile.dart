import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/config/constants.dart';
import 'package:portfolio/config/data/social_media_details.dart';
import 'package:portfolio/widgets/social_media.dart';
import 'package:portfolio/config/dark_light_theme.dart';
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
                'Senior Software Engineer at FIS',
                textScaleFactor: 1.4,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SocialMedia(
                    image: socialHandles[0].image,
                    socialMediaName: socialHandles[0].socialMediaName,
                    onTap: socialHandles[0].onTap,
                  ),
                  SocialMedia(
                    image: socialHandles[1].image,
                    socialMediaName: socialHandles[1].socialMediaName,
                    onTap: socialHandles[1].onTap,
                  ),
                  SocialMedia(
                    image: socialHandles[2].image,
                    socialMediaName: socialHandles[2].socialMediaName,
                    onTap: socialHandles[2].onTap,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SocialMedia(
                    image: socialHandles[3].image,
                    socialMediaName: socialHandles[3].socialMediaName,
                    onTap: socialHandles[3].onTap,
                  ),
                  SocialMedia(
                    image: socialHandles[4].image,
                    socialMediaName: socialHandles[4].socialMediaName,
                    onTap: socialHandles[4].onTap,
                  ),
                  SocialMedia(
                    image: socialHandles[5].image,
                    socialMediaName: socialHandles[5].socialMediaName,
                    onTap: socialHandles[5].onTap,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Resume",
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1
                          .copyWith(fontStyle: FontStyle.italic)),
                  IconButton(
                    icon: ToggleThemer.of(context).isDarkModeOn
                        ? Icon(Icons.download)
                        : Icon(Icons.download),
                    onPressed: () {
                      openResume();
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
