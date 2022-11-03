import 'package:flutter/material.dart';
import 'package:tikodc/constants.dart';

class UserPlusPage extends StatelessWidget {
  const UserPlusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text('Plus', style: TextStyle(fontSize: 20, color: contenuColor,),),),
    );
  }
}