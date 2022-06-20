import 'package:flutter/material.dart';

class SuggestionCard extends StatelessWidget {
  String image;
  String name;
  String mutal;

  SuggestionCard(
      {required this.image, required this.name, required this.mutal});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 300,
      decoration: BoxDecoration(
          color: Color.fromARGB(135, 226, 225, 225),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            child: Image(
              image: AssetImage(image),
              width: 300,
              height: 180,
              fit: BoxFit.cover,
            ),
          ),
          ListTile(
            title: Text(name),
            subtitle: Text('$mutal Mutal Friends'),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                suggestionButtons(isOutline: false),
                SizedBox(
                  width: 20,
                ),
                suggestionButtons(isOutline: true),
              ],
            ),
          )
        ],
      ),
    );
  }
   Widget suggestionButtons({required bool isOutline}) {
    return ElevatedButton.icon(
      onPressed: () {},
      icon: isOutline
          ? SizedBox()
          : Icon(
              Icons.account_box,
              color: Colors.white,
            ),
      label: Text(
        isOutline ? 'Remove' : 'Add Friend',
        style: TextStyle(
          color: isOutline ? Colors.black : Colors.white,
        ),
      ),
      style: ElevatedButton.styleFrom(
        // primary:Color.fromARGB(255, 20, 127, 215),
        primary:
            isOutline ? Colors.transparent : Color.fromARGB(255, 20, 127, 215),
        elevation: 0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(4))),
        side: BorderSide(
          color: isOutline
              ? Color.fromARGB(255, 180, 179, 179)
              : Colors.transparent,
        ),
      ),
    );
  }
}
