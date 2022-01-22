import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';

const String url = 'https://shinryuzaki.page.link';

const AndroidParameters androidParameters = AndroidParameters(
  packageName: 'com.example.flutter_dynamic_links',
  minimumVersion: 0,
);

//! uncomment this if want to use IOS Params !//
/* 
  const IOSParameters iosParameters = IOSParameters(
  bundleId: 'bundleId',
  minimumVersion: 'minimumVersion',
);
*/

final DynamicLinkParameters dlParams = DynamicLinkParameters(
  link: Uri.parse(url),
  uriPrefix: url,
  androidParameters: androidParameters,
  // iosParameters: iosParameters,
);
