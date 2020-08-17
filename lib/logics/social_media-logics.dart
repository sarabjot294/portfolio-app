import 'package:url_launcher/url_launcher.dart';

sendMail() async {
  // Android and iOS
  const uri = 'mailto:sarabjot294@gmail.com?subject=Hola!&body=Hi%20Sarabjot';
  if (await canLaunch(uri)) {
    await launch(uri);
  } else {
    throw 'Could not launch $uri';
  }
}

openTwitter() async {
  // Android and iOS
  const uri = 'https://twitter.com/sarabjot294';
  if (await canLaunch(uri)) {
    await launch(uri);
  } else {
    throw 'Could not launch $uri';
  }
}

openGithub() async {
  // Android and iOS
  const uri = 'https://www.github.com/sarabjot294';
  if (await canLaunch(uri)) {
    await launch(
      uri,
      universalLinksOnly: true,
    );
  } else {
    throw 'Could not launch $uri';
  }
}

openLinkedIn() async {
  // Android and iOS
  const uri = 'https://www.linkedin.com/in/sarabjot294/';
  if (await canLaunch(uri)) {
    await launch(
      uri,
      universalLinksOnly: true,
    );
  } else {
    throw 'Could not launch $uri';
  }
}

openFacebook() async {
  // Android and iOS
  const uri = 'https://www.facebook.com/sarabjot294';
  if (await canLaunch(uri)) {
    await launch(
      uri,
      universalLinksOnly: true,
    );
  } else {
    throw 'Could not launch $uri';
  }
}

openInstagram() async {
  // Android and iOS
  const uri = 'https://www.instagram.com/sarabjot294';
  if (await canLaunch(uri)) {
    await launch(
      uri,
      universalLinksOnly: true,
    );
  } else {
    throw 'Could not launch $uri';
  }
}
