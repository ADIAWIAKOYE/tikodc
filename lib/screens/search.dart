import 'package:flutter/material.dart';
import 'package:tikodc/constants.dart';

 class UserSearchPage extends StatelessWidget {
  const UserSearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text('Search', style: TextStyle(fontSize: 20, color: contenuColor,),),),
    );
  }
}