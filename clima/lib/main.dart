import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:clima/routes.dart';
import 'package:clima/screens/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomeScreen(),
      title: "ClimApp",
      routes: getRoutes(),
      debugShowCheckedModeBanner: false,
    );
  }
}
