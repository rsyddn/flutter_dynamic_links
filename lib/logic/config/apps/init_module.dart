import 'package:flutter_dynamic_links/logic/config/firebase_services/dynamic_links/dynamic_link_service.dart';
import 'package:flutter_dynamic_links/logic/helper/url_constant.dart';

class InitModule {
  static Future init() async {
    DynamicLinksService.init(links: [data1, data2, data3]);
  }
}
