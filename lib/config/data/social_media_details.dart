import 'package:portfolio/logics/social_media-logics.dart';
import 'package:portfolio/widgets/social_media.dart';

final List<SocialMedia> socialHandles = [
  SocialMedia(
    socialMediaName: 'Email',
    image: 'assests/icons/outlook.png',
    onTap: sendMail,
  ),
  SocialMedia(
    socialMediaName: 'Twitter',
    image: 'assests/icons/twitter.png',
    onTap: openTwitter,
  ),
  SocialMedia(
    socialMediaName: 'Github',
    image: 'assests/icons/github_a.png',
    onTap: openGithub,
  ),
  SocialMedia(
    socialMediaName: 'Instagram',
    image: 'assests/icons/instagram.png',
    onTap: openInstagram,
  ),
  SocialMedia(
    socialMediaName: 'LinkedIn',
    image: 'assests/icons/linkedin.png',
    onTap: openLinkedIn,
  ),
  SocialMedia(
    socialMediaName: 'Facebook',
    image: 'assests/icons/fb.png',
    onTap: openFacebook,
  ),
];
