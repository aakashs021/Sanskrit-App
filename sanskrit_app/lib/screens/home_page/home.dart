import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:http/http.dart' as http;
import 'package:sanskrit_app/screens/home_page/home_page_channel.dart';
import 'package:sanskrit_app/screens/second_page/second_page.dart';

const url1 = "https://chat.whatsapp.com/FPdvkOCA9JhDcYR9cfzNvH";
const url2 = "https://ig.me/j/AbYlpwxdBHkzjweC/";

const porturl = "https://gsdpcr3h-3000.inc1.devtunnels.ms/";

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController cont = TextEditingController();
  String ddd = '';

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
                  Get.to(() => SecondPage());
                },
                child: ListTile(
                  trailing: Icon(Icons.chevron_right_sharp),
                  title: Text("Class ${index + 5}"),
                ),
              );
            },
          ),
          TextField(
            controller: cont,
          ),
          ElevatedButton(
              onPressed: () async {
                try {
                  final res = await http.get(Uri.parse('${porturl}get'));
                  var a = jsonDecode(res.body);
                  print(a);
                } catch (e) {
                  print(e);
                }
              },
              child: Text('data')),
          ElevatedButton(
              onPressed: () async {
                final res = await http.post(Uri.parse('${porturl}post'),
                    headers: {"Content-Type": "application/json"},
                    body: jsonEncode(["newstring"]));
                if (res.statusCode == 200) {
                  var na = jsonDecode(res.body);
                  print(na);
                }
              },
              child: Text('show')),
          Text(ddd)
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
