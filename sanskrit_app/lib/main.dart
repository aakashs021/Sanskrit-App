import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:sanskrit_app/screens/splash_page/splash.dart';

void main(List<String> args) {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}