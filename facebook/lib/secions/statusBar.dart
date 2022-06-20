
import 'package:facebook/Widgets/avatar.dart';
import 'package:flutter/material.dart';
import 'package:facebook/assets.dart';

class StatusBar extends StatelessWidget {
  const StatusBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return  ListTile(
        leading:Avatar(avatarImages: irfan,),
        title: const TextField(
          decoration: InputDecoration(
            hintText: 'whats on your mind?',
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            hintStyle: TextStyle(
              color: Colors.black,
            )
          ),
        ),
        
      );
  }
}
