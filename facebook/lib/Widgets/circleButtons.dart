import 'package:flutter/material.dart';

Widget circularIcons(
    {required IconData button, required void Function() buttonAction,Color iconBackground = const Color.fromARGB(255, 224, 224, 224), Color  iconColor = Colors.black}) {
  return Container(
    margin: const EdgeInsets.only(
      right: 20,
    ),
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: iconBackground,
    ),
    child: IconButton(
      onPressed: buttonAction,
      icon: Icon(
        button,
        size: 25,
        color: iconColor,
      ),
    ),
  );
}
