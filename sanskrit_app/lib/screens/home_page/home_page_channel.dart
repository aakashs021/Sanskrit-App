import 'package:flutter/material.dart';
import 'package:sanskrit_app/screens/home_page/home.dart';
import 'package:url_launcher/url_launcher.dart';

 Row methodchannelrow(double height) {
    return Row(
          children: [
            SizedBox(
              width: 10,
            ),
            socialmediachannel(url1, height,
                'asset/images/whatsapp_logo2.png', Colors.green),
            SizedBox(
              width: 10,
            ),
            socialmediachannel(url2, height,
                'asset/images/instagram_logo2.png', Colors.blue),
            SizedBox(
              width: 10,
            ),
          ],
        );
  }

Widget socialmediachannel(String url, double height, String data, Color color) {
  return Expanded(
    child: GestureDetector(
      onTap: () async {
        await openWhatsAppChannel(url);
      },
      child: Card(
        elevation: 15,
        shadowColor: color,
        // color: Colors.blue,
        child: Container(
            decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(0),
                ),
            height: height * 0.15,
            child: Image.asset(data)),
      ),
    ),
  );
}

openWhatsAppChannel(String url) async {
  var uri = Uri.parse(url);
  if (await launchUrl(uri)) {
    await launchUrl(uri, mode: LaunchMode.externalApplication);
  } else {
    throw 'Could not launch $url';
  }
}
