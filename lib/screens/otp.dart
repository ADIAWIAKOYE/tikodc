import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_text_field.dart';
 import 'package:otp_text_field/style.dart';

import '../constants.dart';

class OtpForm extends StatelessWidget {

  OtpFieldController otpController = OtpFieldController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(

            centerTitle: true,

            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios_rounded, color: Colors.black,),
              onPressed: () => Navigator.of(context).pop(),
            ),

            backgroundColor: Colors.transparent,

            elevation: 0,
          ),

         /* floatingActionButton: FloatingActionButton(
          child: Icon(Icons.cleaning_services),
            onPressed: () {
            print("Floating button was pressed.");
            otpController.clear();
            // otpController.set(['2', '3', '5', '5', '7']);
            // otpController.setValue('3', 0);
            // otpController.setFocus(1);
            },
            ),*/


          // Image.network("Add Image Link"),
        body: Column(
            children: [

              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 0.0, 80, 0.0),
                child: Text('Saisis le code à 4 chiffres',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: contenuColor,
                  ),
                ),
              ),
           SizedBox( height: 20.0,),
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 0.0, 70, 0.0),
                child: Text(
                  'Ton code a été envoyé à +223 74468913 ',
                  style: TextStyle(color: Colors.grey, fontSize: 13),
                ),
              ),

              SizedBox( height: 20.0,),
         Container(
          child: OTPTextField(
              length: 4,
              width: MediaQuery.of(context).size.width,
              textFieldAlignment: MainAxisAlignment.spaceAround,

              fieldWidth: 50,
              fieldStyle: FieldStyle.underline,
              style: TextStyle(fontSize: 17),
              onChanged: (pin) {
                print("Changed: " + pin);
              },
              onCompleted: (pin) {
                print("Completed: " + pin);
              }
              ),
        ),
              SizedBox( height: 20.0,),

              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 0.0, 170, 0.0),
                child: Text(
                  'Renvoyer le code  49s ',
                  style: TextStyle(color: Colors.grey, fontSize: 13),
                ),
              ),

              SizedBox( height: 15.0,),
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Tu n\'as pas reçu de code? ', style: TextStyle(fontSize: 12, color: contenuColor,),),
                    InkWell(
                      onTap: () {
                        print('navigating user');
                      }, child: Text('Demander un apple téléphonique', style: TextStyle(fontSize: 12, color: buttonColor),),
                    )
                  ],
                ),
              )
      ]
      )
      ),
    );
  }
}
