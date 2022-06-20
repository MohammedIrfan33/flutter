import 'package:flutter/material.dart';

class HeaderButtonsSections extends StatelessWidget {

  
       final Widget buttonOne;
       final Widget buttonTwo;
       final Widget buttonThree;

  
  HeaderButtonsSections(
    {required this.buttonOne,required this.buttonTwo,required this.buttonThree});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buttonOne,
          verticalDivider,
          buttonTwo,
          verticalDivider,
          buttonThree,
        ],
      ),
    );
  }

  Widget verticalDivider = VerticalDivider(
    thickness: 1,
    color: Colors.grey[300],
  );
  
}
