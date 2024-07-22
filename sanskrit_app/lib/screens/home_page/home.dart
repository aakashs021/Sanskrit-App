import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:sanskrit_app/screens/home_page/home_page_channel.dart';
import 'package:sanskrit_app/screens/second_page/second_page.dart';
import 'package:url_launcher/url_launcher.dart';

const url1 = "https://chat.whatsapp.com/FPdvkOCA9JhDcYR9cfzNvH";
const url2 = "https://ig.me/j/AbYlpwxdBHkzjweC/";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          homepagelogo(height),
          methodchannelrow(height),
          SizedBox(
            height: 20,
          ),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 6,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Get.to(()=> SecondPage());
                },
                child: ListTile(
                  trailing: Icon(Icons.chevron_right_sharp),
                  title: Text("Class ${index + 5}"),
                ),
              );
            },
          )
        ],
      )),
    );
  }
}

SizedBox homepagelogo(double height) {
  return SizedBox(
    child: Image.asset('asset/images/home_page_logo.png'),
    height: height * 0.2,
  );
}
