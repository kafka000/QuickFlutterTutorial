import 'package:flutter/material.dart';

class PageItem {
  String title;
  Widget page;

  PageItem({required this.title, required this.page});
}

class AppConstants {
  static const String appTitle = 'My Flutter App';
  static const int maxItems = 50;
  // ...其他常量
}
