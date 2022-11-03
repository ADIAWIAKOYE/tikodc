import 'package:flutter/material.dart';

import '../../util/postTemplate.dart';

class Mypost3 extends StatelessWidget {
  const Mypost3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  PostTemplate(
      username: 'randomUser',
      videoDescription: 'flutter tutorial',
      numberOfLikes: '1.2B',
      numberOfComments: '1232',
      numberOfShares: '123',
      userPost: Container(
        color: Colors.blue[100],
      ),
    );
  }
}