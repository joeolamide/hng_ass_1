import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:simple_icons/simple_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  _launchURLBrowser() async {
    var url = Uri.parse("https://github.com/joeolamide/hng_ass_1.git");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFeeedf2),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Gap(30),
              Container(
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage("assets/image/joe.png"),
                  radius: 120,
                ),
              ),
            ],
          ),
          Gap(12),
          Center(
            child: Text(
              "Joseph Odulate",
              style: TextStyle(
                height: 2,
                fontSize: 40,
                color: Colors.blueGrey,
              ),
            ),
          ),
          Gap(15),
            Container(
         // margin: EdgeInsets.only(right: 80),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Icon(
             SimpleIcons.github
             ),
          Gap(8),
          GestureDetector(
              onTap: _launchURLBrowser,
                //print("you are tapped");
              child: Text("Open Github")),
           ],
             ),
            ),

        ],
      ),
    );
  }
}
