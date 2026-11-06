import 'package:url_launcher/url_launcher.dart';

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
