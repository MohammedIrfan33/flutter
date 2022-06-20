import 'package:facebook/assets.dart';
import 'package:flutter/material.dart';
import 'package:facebook/Widgets/avatar.dart';

class Roomsections extends StatelessWidget {
  const Roomsections({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 5,
        bottom: 5,
      ),
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: OutlinedButton.icon(
              icon: Icon(
                Icons.video_call,
                color: Colors.purple,
              ),
              label: Text(
                "Create\n Room",
                style: TextStyle(color: Colors.blue),
              ),
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                  shape: StadiumBorder(),
                  side: BorderSide(
                    width: 1,
                    color: Colors.blueAccent,
                  )),
            ),
          ),
          Avatar(avatarImages: irfan,isOnline: true,),
          Avatar(avatarImages: elonmusk,isOnline: true),
          Avatar(avatarImages: bilgates,isOnline: true),
          Avatar(avatarImages: mark,isOnline: true),
          Avatar(avatarImages:jeff,isOnline: true),
          Avatar(avatarImages: nikil,isOnline: true),
          Avatar(avatarImages: lulu,isOnline: true),
          Avatar(avatarImages: ambani,isOnline: true),
          Avatar(avatarImages: jhonny,isOnline: true),
          Avatar(avatarImages: tony,isOnline: true),

        ],
      ),
    );
  }
}
