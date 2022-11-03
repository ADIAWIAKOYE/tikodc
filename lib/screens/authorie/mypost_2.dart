import 'package:flutter/material.dart';

import '../../util/postTemplate.dart';

class Mypost2 extends StatelessWidget {
  const Mypost2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  PostTemplate(
      username: 'zuckerberg',
      videoDescription: 'reels for days',
      numberOfLikes: '14.2k',
      numberOfComments: '1272',
      numberOfShares: '153',
      userPost: Container(
        color: Colors.pink[200],
      ),
    );
  }
}