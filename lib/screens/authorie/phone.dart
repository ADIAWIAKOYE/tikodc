import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import '../../constants.dart';
import '../../widgets/text_input_filed.dart';
import '../otp.dart';


 class Phone extends StatelessWidget {
  final TextEditingController _mailController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        children: [
        SizedBox(height: 20,),
     /* Container(
       // color: Colors.red,
       child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 16,),

          child: TextFormField(
            style: TextStyle(color: Colors.red),
            decoration: const InputDecoration(

              fillColor: Colors.orange,
              border: UnderlineInputBorder(

                 borderSide: BorderSide(

                     color: Colors.teal,

                ),
              ),

              labelText: 'numero de téléphone ',
               labelStyle: TextStyle(color: Colors.grey)
            ),
          ),
        ),
      ),*/

       Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 16,),

            child:  InternationalPhoneNumberInput(

              onInputChanged: (PhoneNumber number) {
              print(number.phoneNumber);
              },
              onInputValidated: (bool value) {
              print(value);
              },


              selectorConfig: SelectorConfig(
              selectorType: PhoneInputSelectorType.BOTTOM_SHEET,),

              autoValidateMode: AutovalidateMode.disabled,
              selectorTextStyle: TextStyle(color: Colors.black),
              inputBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                    style: BorderStyle.solid, width: 1)
              ),
                textStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                )


            ),

        ),
    ),
          SizedBox(height: 20.0,),
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 0.0, 180, 0.0),
            child: const Text('mot de passe oublier',
              style: TextStyle(
                fontSize: 16,

                color: contenuColor,
              ),
            ),
          ),


          Container(

          child:  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),

            child: ElevatedButton(onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) =>OtpForm()));

            },
              style: ElevatedButton.styleFrom(
                  primary: borderColor1,
                  elevation: 2,
                  minimumSize: Size(250, 40),
              ),
              child: const Text('Envoyer un code',
                style: TextStyle(fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: contenuColor),
              ),
            ),
          ),
       ),
        ]
      )

    );
  }
 }