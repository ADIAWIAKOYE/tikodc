import 'package:flutter/material.dart';

import '../../constants.dart';


class Mail extends StatelessWidget {
  const Mail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text('Mail', style: TextStyle(fontSize: 20, color: contenuColor,),),),
    );
  }
}