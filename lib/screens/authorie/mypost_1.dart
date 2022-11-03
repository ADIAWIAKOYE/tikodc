import 'package:flutter/material.dart';
import 'package:tikodc/constants.dart';
import 'package:tikodc/util/button.dart';
import 'package:tikodc/util/postTemplate.dart';

class Mypost1 extends StatelessWidget {
  const Mypost1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      username: 'createbykoko',
      videoDescription: 'tiktok ui tutorial',
      numberOfLikes: '1.2M',
      numberOfComments: '1232',
      numberOfShares: '123',
      userPost: Container(
        color: Colors.deepPurple[100],
      ),
    );
  }
}
