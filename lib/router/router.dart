import 'package:flutter/cupertino.dart';

import '../component/Home.dart';

class PageRoutes {
  static const String home = '/';
  static const String manage = '/manage';
}

final Map<String, WidgetBuilder> routes = {
  PageRoutes.home: (context) => const HomePage(),
  PageRoutes.manage: (context) => const HomePage(),
};