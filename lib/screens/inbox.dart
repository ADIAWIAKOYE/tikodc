import 'package:flutter/material.dart';
import 'package:tikodc/constants.dart';

class UserInboxPage extends StatelessWidget {
  const UserInboxPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text('Inbox', style: TextStyle(fontSize: 20, color: contenuColor,),),),
    );
  }
}