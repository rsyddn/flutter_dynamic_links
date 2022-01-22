import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dynamic_links/logic/config/firebase_services/dynamic_links/dynamic_link_config.dart';
import 'package:flutter_dynamic_links/logic/config/firebase_services/dynamic_links/dynamic_link_data.dart';

class DynamicLinksService {
  static FirebaseDynamicLinks? _fdl;

  //android
  static String? packageName = 'com.example.flutter_dynamic_links';
  static int? androidMinimumVer;

  //ios
  static String? bundleId = 'ios-bundle id';
  static int? iosMinimumVer;

  //On Android, if you'd like to use Dynamic Links with a secondary Firebase App,
  //use the instanceFor method:
  /*
  Android only
    FirebaseApp secondaryApp = Firebase.app('SecondaryApp');
    FirebaseDynamicLinks dynamicLinks = FirebaseDynamicLinks.instanceFor(app: secondaryApp);
  */

  //variable
  static List<DynamicLinkData>? dynamicLinks = [];

  static init({@required List<DynamicLinkData>? links}) async {
    final PendingDynamicLinkData? initialLink;

    _fdl = FirebaseDynamicLinks.instance;
    initialLink = await _fdl?.getInitialLink();
    dynamicLinks = links;

    if (initialLink != null) {
      dynamicHandler(initialLink.link);
    }

    _fdl?.onLink.listen((event) {
      dynamicHandler(event.link);
    }).onError((error) {
      debugPrint(error);
    });
  }

  static void dynamicHandler(Uri? uri) {
    dynamicLinks?.forEach((element) {
      if (element.uri == uri) {
        element.action();
      }
    });
  }

  static Future<String> getShortLink() async {
    var shortLink = await _fdl?.buildShortLink(dlParams);
    return '${shortLink?.shortUrl}';
  }

  static Future<String> getLink() async {
    var link = await _fdl?.buildLink(dlParams);
    return '${link?.data?.uri}';
  }
}
