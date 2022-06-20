import 'package:flutter/material.dart';
import 'package:facebook/assets.dart';

class Avatar extends StatelessWidget {
  //const Avatar({Key? key}) : super(key: key);
  final String avatarImages;
  final bool  isOnline;
  final bool isBorder;
  final double radius;

  Avatar({required this.avatarImages, this.isOnline=false,this.isBorder=false,this.radius=26});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: isBorder ? Border.all(
                width: 2,
                color: Colors.lightBlue
              ):const Border(),
            ),
            child: CircleAvatar(
              backgroundImage: AssetImage(avatarImages),
              radius: radius,
            ),
          ),
          isOnline ?
          Positioned(
            bottom: 1,
            right: 4,
            child: Container(
              padding: EdgeInsets.all(6),
              decoration:BoxDecoration(
                color: Colors.greenAccent,
                border: Border.all(
                  color: Colors.white,
                  width: 2
                ),
                shape: BoxShape.circle,
              ),
            ),
          ) : 
          SizedBox()
        ],
      ),
    );
  }
}
