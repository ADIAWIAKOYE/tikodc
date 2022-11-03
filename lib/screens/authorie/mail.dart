import 'package:flutter/material.dart';

import '../../constants.dart';


class Phone extends StatelessWidget {
  const Phone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text('Phone', style: TextStyle(fontSize: 20, color: contenuColor,),),),
    );
  }
}
