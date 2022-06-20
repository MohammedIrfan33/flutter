import 'package:facebook/Widgets/StoryCard.dart';
import 'package:facebook/assets.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            profileName: 'Your Story',
            avatar: irfan,
            story: irfan,
            isYourProfile: true,
          ),
          StoryCard(
            profileName: 'Mukesh Ambani',
            avatar: ambani,
            story: ambaniStory,
            isBorder: true,
          ),
          StoryCard(
            profileName: 'Reed Hasting',
            avatar: netflix,
            story: reedStory,
            isBorder: true,
          ),
          StoryCard(
            profileName: 'M A Yousf Ali',
            avatar: lulu,
            story: yousfStory,
            isBorder: true,
          ),
          StoryCard(
            profileName: 'Elon Musk',
            avatar: elonmusk,
            story: elonStory,
            isBorder: true,
          ),
          StoryCard(
            profileName: 'Tony Stark',
            avatar: tony,
            story: ironStory,
            isBorder: true,
          ),
          StoryCard(
            profileName: 'Jhonny Depp',
            avatar: jhonny,
            story: jhonnyStory,
            isBorder: true,
          ),
        ],
      ),
    );
  }
}
