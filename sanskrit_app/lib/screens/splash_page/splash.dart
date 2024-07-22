import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:sanskrit_app/screens/home_page/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    navigateToHome();
    super.initState();
  }

   navigateToHome() async {
    await Future.delayed(Duration(milliseconds: 1500), () {});
    Get.off(()=>HomePage());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: Container(
          child: Image.asset(
              height: double.infinity,
              fit: BoxFit.cover,
              'asset/images/sanskrit_app_logo.jpeg'),
        ),
      ),
    );
  }
}
