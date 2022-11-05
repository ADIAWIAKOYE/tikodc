import 'package:flutter/material.dart';
import 'package:tikodc/constants.dart';

class UserPlusPage extends StatelessWidget {
  const UserPlusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(),
      body: Column(
        children: [
          Container(
            color: Colors.amber,
            child: Center(child: Text('Plus', style: TextStyle(fontSize: 20, color: contenuColor,),),),
          ),
          Spacer(),
          Container(
            color: Colors.red,
            height: 90,
            child: _buildCameraTemplateSelector(),
          ),
        ],
      ),
    );
  }
  Widget _buildCameraTemplateSelector(){
   final List<String> postypes = ["Camera", "Quick", "Templates"];
   return Stack( alignment: Alignment.topCenter,);
  }
}