import 'package:facebook/Widgets/Buttons.dart';
import 'package:facebook/Widgets/avatar.dart';
import 'package:facebook/assets.dart';
import 'package:facebook/secions/headerButtonsSections.dart';
import 'package:flutter/material.dart';

class PostSection extends StatelessWidget {


  String avatarImages;
  String name;
  String post;
  String title;
  bool isVerified;
  int comment;
  int share;
  int like;


  PostSection({
    required this.avatarImages,
    required this.name,
    required this.title,
    required this.post,
    required this.like,
   required this.comment,
    required this.share,
   this.isVerified=false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ListTile(
            leading: Avatar(avatarImages: avatarImages),
            title: Row(
              children: [
                Text(name),
                SizedBox(
                  width: 5,
                ),
                isVerified ?  CircleAvatar(
                  radius: 6,
                  backgroundColor: Colors.lightBlue,
                  child: Icon(
                    Icons.check,
                    size: 6,
                    color: Colors.white,
                  ),
                ):SizedBox(width: 5,)
              ],
            ),
            subtitle: Row(
              children: [
                Text("1hr"),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.public,
                  size: 15,
                  color: Colors.grey,
                )
              ],
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_horiz,
                color: Colors.grey,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text(title),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            height: 250,
            child: Image(
              image: AssetImage(post),
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: 50,
            padding: EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.thumb_up,
                        color: Colors.lightBlue,
                        size: 16,
                      ),
                      displayText('${like.toString()}k')
                    ],
                  ),
                ),

                //comment and share main container
                Container(
                  child: Row(
                    children: [
                      //comment
                      Container(
                        child: Row(
                          children: [
                            displayText('${comment.toString()}k'),
                            SizedBox(
                              width: 5,
                            ),
                            displayText('Comments')
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      //share
                      Container(
                        child: Row(
                          children: [
                            displayText('${share.toString()}k'),
                            SizedBox(
                              width: 5,
                            ),
                            displayText('Share'),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Avatar(
                        avatarImages: avatarImages,
                        radius: 10,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_drop_down,
                          color: Colors.grey[700],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          HeaderButtonsSections(
            buttonOne: rowIcons(
                icon: Icons.thumb_up_alt_outlined,
                color: Color.fromRGBO(97, 97, 97, 1),
                buttonName: 'Like',
                buttonAction: () {}),
            buttonTwo: rowIcons(
                icon: Icons.comment,
                color: Color.fromRGBO(97, 97, 97, 1),
                buttonName: 'Comments',
                buttonAction: () {}),
            buttonThree: rowIcons(
                icon: Icons.share_outlined,
                color: Color.fromRGBO(97, 97, 97, 1),
                buttonName: 'Share',
                buttonAction: () {}),
          ),
        ],
      ),
    );
  }

  Widget displayText(String text) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.grey[700],
        fontSize: 15,
      ),
    );
  }
}
