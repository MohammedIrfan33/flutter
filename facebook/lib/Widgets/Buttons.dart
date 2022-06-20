import 'package:flutter/material.dart';

Widget rowIcons(
      {required IconData icon,
      required Color color,
      required String buttonName,
      required void Function() buttonAction}) {
    return TextButton.icon(
      icon: Icon(
        icon,
        color: color,
      ),
      label: Text(
        buttonName,
        style: TextStyle(color: Colors.black),
      ),
      onPressed: buttonAction,
    );
  }