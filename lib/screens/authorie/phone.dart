import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../widgets/text_input_filed.dart';


 class Phone extends StatelessWidget {
  final TextEditingController _mailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizedBox(height: 70,);
    return  Scaffold(
      backgroundColor: backgroundColor,
      body: Container(

       child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 16,),

          child: TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(

              ),

              labelText: 'numero de téléphone ',

            ),
          ),
        ),

      ),


    );
  }
}