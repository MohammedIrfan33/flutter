import 'package:facebook/Widgets/Buttons.dart';
import 'package:facebook/Widgets/circleButtons.dart';
import 'package:facebook/assets.dart';
import 'package:facebook/secions/headerButtonsSections.dart';
import 'package:facebook/secions/postSection.dart';
import 'package:facebook/secions/storySection.dart';
import 'package:facebook/secions/roomsections.dart';
import 'package:facebook/secions/statusBar.dart';
import 'package:facebook/secions/suggestions.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  //Divider
  Widget divider({double thickness = 0}) {
    return Divider(
      thickness: thickness,
      color: Colors.grey[300],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'facebook',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            'faceboook',
            style: TextStyle(
                color: Colors.blue, fontSize: 26, fontWeight: FontWeight.bold),
          ),
          actions: [
            circularIcons(button: Icons.search, buttonAction: () {}),
            circularIcons(button: Icons.chat, buttonAction: () {})
          ],
        ),
        body: ListView(
          children: [
            StatusBar(),
            divider(thickness: 1),
            HeaderButtonsSections(
              buttonOne: rowIcons(
                  icon: Icons.video_call,
                  color: Colors.pink,
                  buttonName: 'live',
                  buttonAction: () {}),
              buttonTwo: rowIcons(
                  icon: Icons.photo_album,
                  color: Colors.green,
                  buttonName: 'photos',
                  buttonAction: () {}),
              buttonThree: rowIcons(
                  icon: Icons.video_call,
                  color: Colors.purple,
                  buttonName: 'videos',
                  buttonAction: () {}),
            ),
            divider(thickness: 10),
            Roomsections(),
            divider(thickness: 10),
            StorySection(),
            divider(thickness: 10),
            PostSection(
              avatarImages: elonmusk,
              name: 'Elon Musk',
              title: 'insperation ',
              post: p1,
              like: 101,
              comment: 10,
              share: 20,
            ),
            divider(thickness: 10),
            PostSection(
              avatarImages: lulu,
              name: 'Yousf Ali',
              title: 'lulu group ',
              post: ambaniStory,
              like: 11,
              comment: 30,
              share: 10,
            ),
            divider(thickness: 10),
            Suggestions(),
            divider(thickness: 10),
            PostSection(
              avatarImages: bilgates,
              name: 'Bill Gates',
              title: 'Micro Soft ',
              post: p3,
              like: 461,
              comment: 60,
              share: 80,
            ),
            divider(thickness: 10),
            PostSection(
              avatarImages:ambani,
              name: 'Ambani',
              title: 'Relains ',
              post: p4,
              like: 41,
              comment: 50,
              share: 70,
            ),
          ],
        ),
      ),
    );
  }
}
