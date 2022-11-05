import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tikodc/screens/test.dart';

import '../constants.dart';
import 'otp.dart';

class InscriptionCalandar extends StatelessWidget {
  const InscriptionCalandar({Key? key}) : super(key: key);

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

          title:  const Text('Inscription',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: contenuColor,
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),


         body: Column(
                children: [
                   Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children:  <Widget>[
                        Expanded(flex: 2,
                         child: Padding(
                          padding: const EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
                          child: Text('Quelle est ta date de naissance  ? ',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: contenuColor,
                            ),
                          ),
                         ),
                        ),
                        Expanded(flex: 1,
                          child: Icon(Icons.storefront_outlined,
                          size: 90.0,
                          color: Colors.blue,
                        ),
                        ),
                      ],
                    ),
                  ),
                 /* Padding(
                    padding: const EdgeInsets.fromLTRB(30.0, 0.0, 100, 0.0),
                    child: Text(
                      'Ta date de naissance ne sera pas affiché publiquement ',
                      style: TextStyle(color: Colors.grey, fontSize: 13),
                    ),
                  ),*/
                   Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16,),
                   child:   Container(
                    child: TextFormField(
                      style: TextStyle(color: contenuColor),
                      decoration: const InputDecoration(
                          fillColor: Colors.orange,
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(
                                style: BorderStyle.solid, width: 1
                            ),
                          ),

                          labelText: 'Date de naissance',
                          labelStyle: TextStyle(color: Colors.grey)
                      ),

                    ),
                  ),
                    ),

                    Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),

                          child: ElevatedButton(onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) =>Test()));

                          },
                            style: ElevatedButton.styleFrom(
                              primary: borderColor1,
                              elevation: 2,
                              minimumSize: Size(200, 40),
                            ),
                              child: const Text('Suivant',
                                style: TextStyle(fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: contenuColor),
                              ),
                            ),
                          ),
                  Container(
                    height: 150,
                    child: CupertinoDatePicker(
                      mode: CupertinoDatePickerMode.date,
                      initialDateTime: DateTime(1969, 1, 1),
                      onDateTimeChanged: (DateTime newDateTime) {
                        // Do something
                      },
                    ),
                  ),
                ]

      ),

    ),
    );
  }
}
