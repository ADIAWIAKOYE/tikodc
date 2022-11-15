//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:tikodc/constants.dart';

class UserPlusPage extends StatefulWidget {
  const UserPlusPage({Key? key}) : super(key: key);

  @override
  State<UserPlusPage> createState() => _UserPlusPageState();
}

class _UserPlusPageState extends State<UserPlusPage> {
       PageController _pageController = PageController(initialPage: 1, viewportFraction: 0.2);
         int _selecteTab = 1;

  @override
    void dispose(){
    super.dispose();
    _pageController.dispose();
  }

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
            child: _buildCameraTemplateSelector(context),
          ),
        ],
      ),
    );
  }

  Widget _buildCameraTemplateSelector(context){
    final List<String> posTypes = ["Camera", "Quick", "Templates"];
   TextStyle style = Theme.of(context).textTheme.bodyText1!.copyWith(
    fontSize: 13, color: Colors.white, fontWeight: FontWeight.bold);
   return Stack( alignment: Alignment.topCenter,
   children: [
     Container(height: 45,
       child: PageView.builder(
         controller: _pageController,
           itemCount: posTypes.length,
           itemBuilder: (context, index){
       return Container(
         width: 50,
         height: 50,
         child: Text(
           posTypes[index],
           style: style,
         ),
       );
     }
     ),

     ),
   ],
   );
  }
}