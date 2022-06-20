import 'package:facebook/Widgets/avatar.dart';
import 'package:flutter/material.dart';
import 'package:facebook/Widgets/circleButtons.dart';
import 'package:facebook/assets.dart';


class StoryCard extends StatelessWidget {

  final bool  isYourProfile;
  final String avatar;
  final String profileName;
  final bool  isBorder;
  final String story;

  StoryCard({required this.avatar,required this.profileName,required this.story, this.isYourProfile = false,this.isBorder=false});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 150,
          margin: EdgeInsets.only(
            left: 8,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(image: AssetImage(story), fit: BoxFit.cover),
          ),
        ),
        Positioned(
          top: 10,
          left: 15,
          child: isYourProfile ? circularIcons(
            button: Icons.add,
            iconBackground: Color.fromARGB(255, 237, 236, 236),
            iconColor: Colors.blue,
            buttonAction: () {
              print("story added");
            },
          ) : Avatar(avatarImages: avatar,isBorder:isBorder,),
        ),
        Positioned(
          bottom: 15,
          left: 18,
          child: Text(
           profileName != null ? profileName:"note available",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 17,
            ),
          ),
        ),
      ],
    );
  }
}
