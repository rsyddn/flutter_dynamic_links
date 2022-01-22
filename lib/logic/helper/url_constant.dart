import 'package:flutter_dynamic_links/logic/config/firebase_services/dynamic_links/dynamic_link_data.dart';
import 'package:flutter_dynamic_links/ui/helper/dialoug.dart';

final data1 = DynamicLinkData(
  uri: Uri.parse("https://shinryuzaki.page.link/qoin"),
  action: () => Dialoug.sampleSnackbar(title: 'Qoin1'),
);

final data2 = DynamicLinkData(
  uri: Uri.parse("https://shinryuzaki.page.link/y1E4"),
  action: () => Dialoug.sampleSnackbar(title: 'Qoin2'),
);

final data3 = DynamicLinkData(
  uri: Uri.parse("https://shinryuzaki.page.link/post/dynamicLink3"),
  action: () {},
);
