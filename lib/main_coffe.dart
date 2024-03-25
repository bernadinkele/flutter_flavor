import 'package:flutter/material.dart';
import 'package:untitled/flavor_config.dart';
import 'package:untitled/main_common.dart';

void main() {
  final coffeConfig = FlavorsConfig(
      themeData: ThemeData.light(),
      apiEndPoints: {Endpoints.details: "", Endpoints.items: ""},
      appTitle: "Coffee",
      imageLocation: "https://neurosciencenews.com/files/2023/06/coffee-brain-caffeine-neuroscincces.jpg");
  mainCommon(coffeConfig);
}
