import 'package:flutter/material.dart';
import 'package:untitled/flavor_config.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final flavorConfigProvider =
    StateProvider<FlavorsConfig>((ref) => FlavorsConfig(appTitle: "Title"));

void mainCommon(FlavorsConfig config) {
  runApp(ProviderScope(
      child: MyApp(
    config: config,
  )));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.config});
  final FlavorsConfig config;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: config.themeData,
          home: HomePage(
            config: config,
          ),
          title: config.appTitle,
        );
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.config});
  final FlavorsConfig config;
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text(config.appTitle),
          ),
          body: Image.network(config.imageLocation.toString()),
        );
      },
    );
  }
}
