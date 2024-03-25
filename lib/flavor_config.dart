import 'package:flutter/material.dart';

enum Endpoints { items, details }

class FlavorsConfig {
  final String appTitle;
  Map<Endpoints, String>? apiEndPoints;
  String? imageLocation;
  ThemeData? themeData;

  FlavorsConfig(
      {this.themeData,
      this.apiEndPoints,
      required this.appTitle,
      this.imageLocation});
}
