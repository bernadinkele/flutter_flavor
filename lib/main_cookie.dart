import 'package:flutter/material.dart';
import 'package:untitled/flavor_config.dart';
import 'package:untitled/main_common.dart';

void main() {
  final cookieConfig = FlavorsConfig(
      themeData: ThemeData.light(),
      apiEndPoints: {Endpoints.details: "", Endpoints.items: ""},
      appTitle: "Cookie",
      imageLocation: "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f1/2ChocolateChipCookies.jpg/800px-2ChocolateChipCookies.jpg");
  mainCommon(cookieConfig);
}
