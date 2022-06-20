import 'package:facebook/assets.dart';
import 'package:flutter/material.dart';

import '../Widgets/suggestionCards.dart';

class Suggestions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Column(
        children: [
          ListTile(
            leading: Text('you may know this peopler'),
            trailing: Icon(Icons.more_horiz),
          ),
          Container(
            height: 340,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SuggestionCard(
                  image: messi,
                  name: 'Messi',
                  mutal: '30',
                ),
                SuggestionCard(
                  image: neymar,
                  name: 'Neymar jr',
                  mutal: '30',
                ),
                SuggestionCard(
                  image: mohanlal,
                  name: 'Mohanlal',
                  mutal: '40',
                ),
                SuggestionCard(
                  image: virat,
                  name: 'Virat Kholi',
                  mutal: '25',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
