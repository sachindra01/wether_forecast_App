import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wether_app/providers_list/provider_list.dart';
import 'package:wether_app/view/weather_page.dart';

void main() {
  runApp(
    MultiProvider(
      providers: providers,
      child: const MyApp(),
    ),
  );
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weathercast',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: LocationPage(),
    );
  }
}